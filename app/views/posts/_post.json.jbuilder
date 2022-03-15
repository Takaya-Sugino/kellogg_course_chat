json.extract! post, :id, :rating, :description, :session_id, :poster_id,
              :created_at, :updated_at
json.url post_url(post, format: :json)
