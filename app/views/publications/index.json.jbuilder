json.array!(@publications) do |publication|
  json.extract! publication, :title, :description
  json.url publication_url(publication, format: :json)
end
