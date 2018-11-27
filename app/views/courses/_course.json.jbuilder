json.extract! course, :id, :coursename, :faculty_id, :created_at, :updated_at
json.url course_url(course, format: :json)
