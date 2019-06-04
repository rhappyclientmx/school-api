class AddMoreInfoToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :birth_date, :date
    add_column :teachers, :gender, :string
  end
end
