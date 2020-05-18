json.extract! comment, :id, :body, :date_posted, :created_at, :updated_at
json.url comment_url(comment, format: :json)
