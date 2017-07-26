class CreateUranais < ActiveRecord::Migration
  def change
    create_table :uranais do |t|
      t.string :luck
      t.string :detail

      t.timestamps null: false
    end
  end
end
