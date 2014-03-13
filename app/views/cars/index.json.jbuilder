json.array!(@cars) do |car|
  json.extract! car, :id, :name, :describtion, :comfort_class, :available, :picture
  json.url car_url(car, format: :json)
end
