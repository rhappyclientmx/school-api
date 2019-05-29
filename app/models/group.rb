# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_groups_on_school_id  (school_id)
#

class Group < ApplicationRecord
  belongs_to :school, optional: true
end
