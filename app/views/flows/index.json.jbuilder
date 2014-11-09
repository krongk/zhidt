json.array!(@flows) do |flow|
  json.extract! flow, :id, :package_id, :title, :description, :tutorial, :icon
  json.url flow_url(flow, format: :json)
end
