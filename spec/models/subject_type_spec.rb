# == Schema Information
#
# Table name: subject_types
#
#  id         :uuid             not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe SubjectType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
