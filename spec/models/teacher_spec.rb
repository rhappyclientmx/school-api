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

require 'rails_helper'

RSpec.describe Teacher, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
