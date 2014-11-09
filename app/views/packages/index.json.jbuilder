json.array!(@packages) do |package|
  json.extract! package, :id, :title, :description, :icon
  json.url package_url(package, format: :json)
end
