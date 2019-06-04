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

class Notice < ApplicationRecord
  belongs_to :school
  belongs_to :user
end
