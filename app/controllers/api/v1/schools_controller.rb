module Api
  module V1
    class SchoolsController < Api::V1::ApiController
      protect_from_forgery with: :null_session
      include Api::Concerns::ActAsApiRequest

      before_action :set_school, only: %i[show update destroy]

      def index
        render json: serializer.new(School.all)
      end

      def show
        json_string = serializer.new(@school)
        render json: json_string
      end

      def create
        @school = School.new(school_params)

        if @school.save
          render json: @school, status: :created, location: @school
        else
          render json: @school.errors, status: :unprocessable_entity
        end
      end

      def update
        if @school.update(school_params)
          render json: @school
        else
          render json: @school.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @school.destroy
      end

      private

      def set_school
        @school = School.find(params[:id])
      end

      def school_params
        params.require(:school).permit(:name, :country,:state, :city)
      end

      def serializer
        Api::V1::SchoolSerializer
      end
    end
  end
end
