json.array!(@issue_customers) do |issue_customer|
  json.extract! issue_customer, :id, :code, :c_name, :c_address, :area, :c_type, :p_name, :email, :phone, :fax
  json.url issue_customer_url(issue_customer, format: :json)
end
