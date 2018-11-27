json.extract! booking, :id, :email, :room_id, :timeslot_id, :status, :supervision, :created_at, :updated_at
json.url booking_url(booking, format: :json)
