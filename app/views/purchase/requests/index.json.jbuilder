json.array!(@purchase_requests) do |purchase_request|
  json.extract! purchase_request, :id, :code, :p_name, :quantity, :unit, :request_date, :estimate_price, :submit_by, :p_confirm, :p_plan, :p_location, :p_net_price, :p_vat, :p_total_price, :w_location, :operator
  json.url purchase_request_url(purchase_request, format: :json)
end
