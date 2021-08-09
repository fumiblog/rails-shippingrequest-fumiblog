json.array!(@shipments) do |shipment|
  json.extract! shipment, :construction.name
  json.start shipment, ship_date
end
