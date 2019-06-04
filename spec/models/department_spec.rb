# == Schema Information
#
# Table name: departments
#
#  id         :uuid             not null, primary key
#  name       :string
#  start_date :date
#  capacity   :integer
#  details    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  school_id  :uuid
#
# Indexes
#
#  index_departments_on_school_id  (school_id)
#

require 'rails_helper'

RSpec.describe Department, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
