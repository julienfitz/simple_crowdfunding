json.array!(@donations) do |donation|
  json.extract! donation, :id, :name, :email, :level, :price, :level_descrip
  json.url donation_url(donation, format: :json)
end
