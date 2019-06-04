class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.references :school, foreign_key: true, type: :uuid, index: true

      t.timestamps
    end
  end
end
