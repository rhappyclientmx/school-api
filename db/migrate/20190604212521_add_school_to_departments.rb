class AddSchoolToDepartments < ActiveRecord::Migration[5.2]
  def change
    add_reference :departments, :school, foreign_key: true, type: :uuid, index: true
  end
end
