# == Schema Information
#
# Table name: teachers
#
#  id         :uuid             not null, primary key
#  first_name :string
#  last_name  :string
#  school_id  :uuid
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  religion   :string
#  join_date  :date
#  email      :string
#  section    :string
#  address    :string
#  phone      :string
#  birth_date :date
#  gender     :string
#
# Indexes
#
#  index_teachers_on_school_id  (school_id)
#

class Teacher < ApplicationRecord
  belongs_to :school
end
