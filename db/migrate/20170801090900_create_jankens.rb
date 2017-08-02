class CreateJankens < ActiveRecord::Migration
  def change
    create_table :jankens do |t|
      t.string :name
      t.string :hand
      t.integer :room

      t.timestamps null: false
    end
  end
end
