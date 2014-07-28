json.array!(@issue_cpublishes) do |issue_cpublish|
  json.extract! issue_cpublish, :id, :issue_publish_id
  json.url issue_cpublish_url(issue_cpublish, format: :json)
end
