json.array!(@startups) do |startup|
  json.extract! startup, :id, :title, :description, :video_url, :rank
  json.url startup_url(startup, format: :json)
end
