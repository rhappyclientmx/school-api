class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events, id: :uuid do |t|
      t.references :school, foreign_key: true, type: :uuid, index: true
      t.string :title
      t.timestamp :start_date
      t.timestamp :end_date
      t.references :user, foreign_key: true, type: :uuid, index: true

      t.timestamps
    end
  end
end
