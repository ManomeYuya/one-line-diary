class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.references :user, null: false, foreign_key: true
      t.text :text, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end
