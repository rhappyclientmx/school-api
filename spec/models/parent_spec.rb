# == Schema Information
#
# Table name: parents
#
#  id            :integer          not null, primary key
#  school_id     :integer
#  guardian_name :string
#  first_name    :string
#  last_name     :string
#  profession    :string
#  email         :string
#  phone         :string
#  address       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_parents_on_school_id  (school_id)
#

require 'rails_helper'

RSpec.describe Parent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
