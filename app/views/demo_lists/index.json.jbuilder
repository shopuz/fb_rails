json.array!(@demo_lists) do |demo_list|
  json.extract! demo_list, :id, :name, :content
  json.url demo_list_url(demo_list, format: :json)
end
