json.array!(@resources) do |resource|
  json.extract! resource, :id, :resource_type, :source_class, :source_id, :asset
  json.url resource_url(resource, format: :json)
end
