json.array!(@adv_pdates) do |adv_pdate|
  json.extract! adv_pdate, :id, :request_id, :p_date, :layout, :remark
  json.url adv_pdate_url(adv_pdate, format: :json)
end
