json.array!(@news) do |news|
  json.extract! news, :title, :description
  json.url news_url(news, format: :json)
end
