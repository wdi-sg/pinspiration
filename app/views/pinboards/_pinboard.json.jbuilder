json.extract! pinboard, :id, :title, :user_id, :created_at, :updated_at
json.url pinboard_url(pinboard, format: :json)
