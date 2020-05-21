json.extract! pin, :id, :title, :img_url, :created_at, :updated_at, :user_id, :board_id
json.url pin_url(pin, format: :json)
