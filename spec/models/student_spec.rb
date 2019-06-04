# == Schema Information
#
# Table name: students
#
#  id              :integer          not null, primary key
#  school_id       :integer
#  parent_id       :integer
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

require 'rails_helper'

RSpec.describe Student, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
