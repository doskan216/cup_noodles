json.array!(@products) do |product|
  json.extract! product, :id, :name, :company, :date, :description, :large_category, :small_category, :remaining_count, :price, :image_url
  json.url product_url(product, format: :json)
end
