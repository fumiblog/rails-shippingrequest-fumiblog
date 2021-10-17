# json.array!(@shipments) do |shipment|
#   json.extract! shipment, :construction.name
#   json.start shipment, ship_date
# end

json.array! @heads do |head|
  json.id head.id
  json.start head.ship_date
  json.title "(" + head.user.name + ")" + head.construction.name + " 納品"
  # json.title "(" + head.user.name + ")" + head.delivery + " 納品"
end

# json.array! @heads, :id, :delivery, :ship_date

# json.text "ほげほげ"
