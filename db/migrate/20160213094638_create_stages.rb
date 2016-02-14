class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.string :date
      t.string :start
      t.integer :finish
      t.integer :gyara

      t.timestamps null: false
    end
  end
end
