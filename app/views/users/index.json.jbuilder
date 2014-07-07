json.array!(@users) do |user|
  json.extract! user, :id, :employer_id, :name, :department, :email, :role, :phone_no
  json.url user_url(user, format: :json)
end
