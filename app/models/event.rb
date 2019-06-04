class Event < ApplicationRecord
  belongs_to :school
  belongs_to :user
end
