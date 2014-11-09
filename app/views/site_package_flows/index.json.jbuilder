json.array!(@site_package_flows) do |site_package_flow|
  json.extract! site_package_flow, :id, :site_package_id, :flow_id, :content, :status
  json.url site_package_flow_url(site_package_flow, format: :json)
end
