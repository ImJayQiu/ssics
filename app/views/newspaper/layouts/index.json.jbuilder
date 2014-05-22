json.array!(@newspaper_layouts) do |newspaper_layout|
  json.extract! newspaper_layout, :id, :code
  json.url newspaper_layout_url(newspaper_layout, format: :json)
end
