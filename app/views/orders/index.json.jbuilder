json.array!(@orders) do |order|
  json.extract! order, :id, :token, :transaction_id, :address_one, :address_two, :city, :state, :zip, :country, :status, :number, :uuid, :user_id, :price, :phone, :name
  json.url order_url(order, format: :json)
end
