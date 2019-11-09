json.extract! pin, :id, :title, :imageURL, :caption, :board_id, :user_id, :created_at, :updated_at
json.url pin_url(pin, format: :json)
