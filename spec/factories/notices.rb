# == Schema Information
#
# Table name: notices
#
#  id         :uuid             not null, primary key
#  school_id  :uuid
#  title      :string
#  details    :text
#  user_id    :integer
#  due_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_notices_on_school_id  (school_id)
#  index_notices_on_user_id    (user_id)
#

FactoryBot.define do
  factory :notice do
    school nil
    title "MyString"
    details "MyText"
    user nil
    due_date "2019-06-04"
  end
end
