json.array!(@adv_requests) do |adv_request|
  json.extract! adv_request, :id, :code, :c_name, :a_size, :a_type, :article, :submit_by, :order_taker, :confirm_by, :status, :designer, :p_type, :remark
  json.url adv_request_url(adv_request, format: :json)
end
