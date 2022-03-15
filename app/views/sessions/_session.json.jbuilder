json.extract! session, :id, :course_id, :professor_id, :created_at, :updated_at
json.url session_url(session, format: :json)
