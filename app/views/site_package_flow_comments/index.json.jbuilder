json.array!(@site_package_flow_comments) do |site_package_flow_comment|
  json.extract! site_package_flow_comment, :id, :site_package_flow_id, :content
  json.url site_package_flow_comment_url(site_package_flow_comment, format: :json)
end
