module Api
  module V1
    class SchoolSerializer
      include FastJsonapi::ObjectSerializer
      attributes :name, :country, :state, :city
    end
  end
end
