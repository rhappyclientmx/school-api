# == Schema Information
#
# Table name: schools
#
#  id         :uuid             not null, primary key
#  name       :string
#  country    :string
#  state      :string
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class School < ApplicationRecord
  has_many :groups
  has_many :teachers
  has_many :users
end
