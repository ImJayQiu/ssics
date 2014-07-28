json.array!(@issue_publishes) do |issue_publish|
  json.extract! issue_publish, :id, :date
  json.url issue_publish_url(issue_publish, format: :json)
end
