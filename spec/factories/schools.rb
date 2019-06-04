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

FactoryBot.define do
  factory :school do
    name "MyString"
    country "MyString"
    state "MyString"
    city "MyString"
  end
end
