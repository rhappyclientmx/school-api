# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  school_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_teachers_on_school_id  (school_id)
#

FactoryBot.define do
  factory :teacher do
    first_name "MyString"
    last_name "MyString"
    school nil
  end
end
