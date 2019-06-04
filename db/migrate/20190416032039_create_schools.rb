class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools, id: :uuid do |t|
      t.string :name
      t.string :country
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
