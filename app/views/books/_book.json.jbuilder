json.extract! book, :id, :title, :author_id, :genre_id, :publisher_id, :isbn, :publish_year, :price, :stock_quantity, :created_at, :updated_at
json.url book_url(book, format: :json)
