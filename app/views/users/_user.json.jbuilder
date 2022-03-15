json.extract! user, :id, :name, :bio, :graduation_year, :program, :email,
              :password, :created_at, :updated_at
json.url user_url(user, format: :json)
