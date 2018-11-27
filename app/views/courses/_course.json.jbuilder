json.extract! course, :id, :CourseName, :ProgDirector, :ProgFaculty, :created_at, :updated_at
json.url course_url(course, format: :json)
