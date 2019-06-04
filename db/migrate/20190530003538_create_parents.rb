class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents, id: :uuid do |t|
      t.references :school, foreign_key: true, type: :uuid, index: true
      t.string :guardian_name
      t.string :first_name
      t.string :last_name
      t.string :profession
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
