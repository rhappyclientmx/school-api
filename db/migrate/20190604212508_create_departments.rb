class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments, id: :uuid do |t|
      t.string :name
      t.date :start_date
      t.integer :capacity
      t.text :details

      t.timestamps
    end
  end
end
