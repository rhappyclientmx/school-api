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

class SubjectType < ApplicationRecord
end
