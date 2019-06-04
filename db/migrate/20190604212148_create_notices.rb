class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices, id: :uuid do |t|
      t.references :school, foreign_key: true, type: :uuid, index: true
      t.string :title
      t.text :details
      t.references :user, foreign_key: true, index: true
      t.date :due_date

      t.timestamps
    end
  end
end
