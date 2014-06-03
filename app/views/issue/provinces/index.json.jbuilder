json.array!(@issue_provinces) do |issue_province|
  json.extract! issue_province, :id, :code, :province, :area_id
  json.url issue_province_url(issue_province, format: :json)
end
