json.extract! room, :id, :name, :floor, :seating, :created_at, :updated_at
json.url room_url(room, format: :json)
