json.array!(@apps) do |app|
  json.extract! app, :id, :name, :slug, :description
  json.url app_url(app, format: :json)
end
