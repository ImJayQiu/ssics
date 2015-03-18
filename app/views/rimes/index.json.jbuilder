json.array!(@rimes) do |rime|
  json.extract! rime, :id, :date, :data1, :data2, :data3, :data4, :data5
  json.url rime_url(rime, format: :json)
end
