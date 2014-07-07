json.array!(@issue_cities) do |issue_city|
  json.extract! issue_city, :id, :code, :city_name, :area, :remark
  json.url issue_city_url(issue_city, format: :json)
end
