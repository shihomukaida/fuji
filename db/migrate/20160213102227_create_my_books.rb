class CreateMyBooks < ActiveRecord::Migration
  def change
    create_table :my_books do |t|
      t.string :book_name
      t.string :author
      t.integer :price
      t.string :company
      t.date :sales_day

      t.timestamps null: false
    end
  end
end
