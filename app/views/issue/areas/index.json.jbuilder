json.array!(@issue_areas) do |issue_area|
  json.extract! issue_area, :id, :code, :area, :remark
  json.url issue_area_url(issue_area, format: :json)
end
