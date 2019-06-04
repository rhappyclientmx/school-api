class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students, id: :uuid do |t|
      t.references :school, foreign_key: true, type: :uuid, index: true
      t.references :parent, foreign_key: true, type: :uuid, index: true
      t.string :first_name
      t.string :father_name
      t.string :mother_name
      t.date :birth_date
      t.string :religion
      t.string :email
      t.date :admission_date
      t.string :address
      t.string :phone
      t.string :register_number
      t.text :details

      t.timestamps
    end
  end
end
