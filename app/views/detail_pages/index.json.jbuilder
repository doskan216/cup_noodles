json.array!(@detail_pages) do |detail_page|
  json.extract! detail_page, :id
  json.url detail_page_url(detail_page, format: :json)
end
