json.array!(@issue_returns) do |issue_return|
  json.extract! issue_return, :id, :date, :c_code, :qty, :remark, :operator
  json.url issue_return_url(issue_return, format: :json)
end
