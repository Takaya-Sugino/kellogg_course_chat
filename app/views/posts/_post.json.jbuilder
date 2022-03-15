json.extract! post, :id, :rating, :poster_id, :course_id, :professor_id,
              :created_at, :updated_at
json.url post_url(post, format: :json)
