json.array!(@super_secret_resources) do |super_secret_resource|
  json.extract! super_secret_resource, :id, :name, :description
  json.url super_secret_resource_url(super_secret_resource, format: :json)
end
