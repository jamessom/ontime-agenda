json.extract! booking, :id, :description, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
