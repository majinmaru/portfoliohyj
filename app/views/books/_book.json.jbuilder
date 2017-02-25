json.extract! book, :id, :title, :content, :avatar, :created_at, :updated_at
json.url book_url(book, format: :json)