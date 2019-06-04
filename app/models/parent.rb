# == Schema Information
#
# Table name: parents
#
#  id            :uuid             not null, primary key
#  school_id     :uuid
#  guardian_name :string
#  first_name    :string
#  last_name     :string
#  profession    :string
#  email         :string
#  phone         :string
#  address       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_parents_on_school_id  (school_id)
#

class Parent < ApplicationRecord
  belongs_to :school
end
