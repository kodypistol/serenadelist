class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :content
      t.datetime :date
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
