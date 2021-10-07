json.extract! book, :id, :title, :name, :description, :publish_date, :created_at, :updated_at
json.url book_url(book, format: :json)
