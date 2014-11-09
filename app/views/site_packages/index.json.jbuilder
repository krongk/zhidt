json.array!(@site_packages) do |site_package|
  json.extract! site_package, :id, :site_id, :package_id
  json.url site_package_url(site_package, format: :json)
end
