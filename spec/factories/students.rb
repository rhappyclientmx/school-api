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

FactoryBot.define do
  factory :student do
    school nil
    parent nil
    first_name "MyString"
    father_name "MyString"
    mother_name "MyString"
    birth_date "2019-05-29"
    religion "MyString"
    email "MyString"
    admission_date "2019-05-29"
    address "MyString"
    phone "MyString"
    state ""
    register_number "MyString"
    details "MyText"
  end
end
