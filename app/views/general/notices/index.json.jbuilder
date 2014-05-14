json.array!(@general_notices) do |general_notice|
  json.extract! general_notice, :id, :date,:title, :notice, :operator, :e_date
  json.url general_notice_url(general_notice, format: :json)
end
