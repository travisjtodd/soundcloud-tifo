json.array!(@tifos) do |tifo|
  json.extract! tifo, :id, :team_id, :track_id
  json.url tifo_url(tifo, format: :json)
end
