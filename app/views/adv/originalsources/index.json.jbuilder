json.array!(@adv_originalsources) do |adv_originalsource|
  json.extract! adv_originalsource, :id, :request_id
  json.url adv_originalsource_url(adv_originalsource, format: :json)
end
