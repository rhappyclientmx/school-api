module Api
  module V1
    class GroupsController < Api::V1::ApiController
      protect_from_forgery with: :null_session
      include Api::Concerns::ActAsApiRequest

      before_action :set_group, only: %i[show update destroy]

      def index
        render json: serializer.new(Group.where(school_id: School.find(current_user.school.id)))
      end

      def show
        json_string = serializer.new(@group)
        render json: json_string
      end

      def create
        @group = Group.new(group_params)

        if @group.save
          render json: @group, status: :created, location: api_v1_group(@group)
        else
          render json: @group.errors, status: :unprocessable_entity
        end
      end

      def update
        if @group.update(group_params)
          render json: @group
        else
          render json: @group.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @group.destroy
      end

      private

      def set_group
        @group = Group.find(params[:id])
      end

      def group_params
        params.require(:group).permit(:name, :school_id)
      end

      def serializer
        Api::V1::GroupSerializer
      end
    end
  end
end