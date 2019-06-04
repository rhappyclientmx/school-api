# == Schema Information
#
# Table name: students
#
#  id              :uuid             not null, primary key
#  school_id       :uuid
#  parent_id       :uuid
#  first_name      :string
#  father_name     :string
#  mother_name     :string
#  birth_date      :date
#  religion        :string
#  email           :string
#  admission_date  :date
#  address         :string
#  phone           :string
#  register_number :string
#  details         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_students_on_parent_id  (parent_id)
#  index_students_on_school_id  (school_id)
#

class Student < ApplicationRecord
  belongs_to :school
  belongs_to :parent
end
