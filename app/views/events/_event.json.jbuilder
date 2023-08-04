json.extract! event, :id, :event_name, :event_date, :start_time, :address, :address2, :city, :state, :zip_code, :about, :website, :created_at, :updated_at
json.url event_url(event, format: :json)
