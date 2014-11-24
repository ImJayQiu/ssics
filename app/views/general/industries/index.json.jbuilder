json.array!(@general_industries) do |general_industry|
  json.extract! general_industry, :id, :code, :tname, :cname, :ename, :remark
  json.url general_industry_url(general_industry, format: :json)
end
