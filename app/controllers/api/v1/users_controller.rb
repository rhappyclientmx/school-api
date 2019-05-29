module Api
  module V1
    class UsersController < Api::V1::ApiController

      def show; end

      def profile
        json_string = serializer.new(current_user)
        render json: json_string
      end

      def update
        current_user.update!(user_params)
        render :show
      end

      private

      def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :email)
      end

      def serializer
        Api::V1::UserSerializer
      end
    end
  end
end
