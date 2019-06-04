class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups, id: :uuid do |t|
      t.references :school, foreign_key: true, type: :uuid, index: true
      t.string :name

      t.timestamps
    end
  end
end
