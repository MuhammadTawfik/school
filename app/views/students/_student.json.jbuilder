json.extract! student, :id, :name, :class_room_id, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
