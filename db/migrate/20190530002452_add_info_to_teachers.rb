class AddInfoToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :religion, :string
    add_column :teachers, :join_date, :date
    add_column :teachers, :email, :string
    add_column :teachers, :section, :string
    add_column :teachers, :address, :string
    add_column :teachers, :phone, :string
  end
end
