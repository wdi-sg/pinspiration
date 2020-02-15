json.extract! pin, :id, :title, :url, :user_id, :created_at, :updated_at
json.url pin_url(pin, format: :json)
