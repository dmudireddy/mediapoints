json.array!(@videoassets) do |videoasset|
  json.extract! videoasset, :merlinid
  json.url videoasset_url(videoasset, format: :json)
end
