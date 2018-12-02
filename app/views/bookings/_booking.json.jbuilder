json.extract! booking, :id, :email, :room_id, :subject_id, :starttime, :duration, :status, :supervision, :created_at, :updated_at
json.url booking_url(booking, format: :json)
