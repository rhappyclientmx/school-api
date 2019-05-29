module Api
  module V1
    class UserSerializer
      include FastJsonapi::ObjectSerializer
      attributes :first_name, :last_name, :username, :email, :school
    end
  end
end
