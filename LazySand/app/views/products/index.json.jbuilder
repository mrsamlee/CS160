json.array!(@products) do |product|
  json.extract! product, :id, :producer, :name, :price, :ingredients, :location
  json.url product_url(product, format: :json)
end
