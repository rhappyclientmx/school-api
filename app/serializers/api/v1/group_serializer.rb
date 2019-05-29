module Api
  module V1
    class GroupSerializer
      include FastJsonapi::ObjectSerializer
      attribute :name

    #  belongs_to :school
    end
  end
end
