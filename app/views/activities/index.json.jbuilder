json.array!(@activities) do |activity|
  json.extract! activity, :title, :description
  json.url activity_url(activity, format: :json)
end
