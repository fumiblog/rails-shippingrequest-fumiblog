# json.array!(@shipments) do |shipment|
#   json.extract! shipment, :construction.name
#   json.start shipment, ship_date
# end

json.array! @heads do |head|
  json.id head.id
  json.start head.ship_date
  json.title "(" + head.user.name + ")" + head.construction.name + " 納品"
end

# json.array! @jobs do |job|
#   json.id String{Number(@job.id) + 10000}
#   json.start @job.date
#   json.title "(" + @job.user.name + ")" + @job.type
# end


