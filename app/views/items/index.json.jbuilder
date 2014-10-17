json.array!(@items) do |item|
  json.extract! item, :id, :item_name, :item_descrip, :item_price
  json.url item_url(item, format: :json)
end
