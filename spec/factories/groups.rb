# == Schema Information
#
# Table name: groups
#
#  id         :uuid             not null, primary key
#  school_id  :uuid
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_groups_on_school_id  (school_id)
#

FactoryBot.define do
  factory :group do
    school nil
    name "MyString"
  end
end
