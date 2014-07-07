json.array!(@adv_finaldesigns) do |adv_finaldesign|
  json.extract! adv_finaldesign, :id, :request_id, :upload_by, :remark
  json.url adv_finaldesign_url(adv_finaldesign, format: :json)
end
