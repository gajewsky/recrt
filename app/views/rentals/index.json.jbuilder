json.array!(@rentals) do |rental|
  json.extract! rental, :id, :car_id, :customer_id, :start, :end
  json.url rental_url(rental, format: :json)
end
