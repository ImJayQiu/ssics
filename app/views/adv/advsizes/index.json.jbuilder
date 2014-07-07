json.array!(@adv_advsizes) do |adv_advsize|
  json.extract! adv_advsize, :id, :code, :advsize, :remark
  json.url adv_advsize_url(adv_advsize, format: :json)
end
