class AddPicturesToMyBooks < ActiveRecord::Migration
  def change
    add_column :my_books, :picture, :string
  end
end
