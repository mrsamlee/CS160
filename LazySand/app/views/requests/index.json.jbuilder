json.array!(@requests) do |request|
  json.extract! request, :id, :consumer, :name, :ingredients, :location
  json.url request_url(request, format: :json)
end
