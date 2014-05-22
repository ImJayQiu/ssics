json.array!(@adv_advtypes) do |adv_advtype|
  json.extract! adv_advtype, :id, :code, :advtype, :remark
  json.url adv_advtype_url(adv_advtype, format: :json)
end
