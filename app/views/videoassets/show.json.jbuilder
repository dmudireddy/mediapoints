

json.(@videoasset, :merlinid)
json.points( @videoasset.points) do |point|


json.mptype point.mptype.mptype
if point.mptype.mptype == "itunes" 
json.img    point.img
json.title  point.title
json.artist point.artist
json.price  number_to_currency(point.price)
json.launchLink point.launchLink

end

if point.mptype.mptype == "ad" 
json.ad_start    point.ad_start
json.ad_duration  point.ad_duration
json.ad_url point.ad_url

end


end




