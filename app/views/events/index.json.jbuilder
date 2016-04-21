json.array!(@events) do |event|
  json.extract! event, :id, :name, :address, :city, :province, :postal_code, :country, :event_date, :description, :status
  json.url event_url(event, format: :json)
end
