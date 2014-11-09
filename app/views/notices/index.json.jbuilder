json.array!(@notices) do |notice|
  json.extract! notice, :id, :user_id, :level, :message, :is_read
  json.url notice_url(notice, format: :json)
end
