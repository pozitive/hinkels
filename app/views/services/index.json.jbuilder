json.array!(@services) do |service|
  json.extract! service, :title, :description
  json.url service_url(service, format: :json)
end
