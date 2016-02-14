json.array!(@my_books) do |my_book|
  json.extract! my_book, :id, :book_name, :author, :price, :company, :sales_day
  json.url my_book_url(my_book, format: :json)
end
