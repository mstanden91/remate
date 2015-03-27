json.array!(@pujas) do |puja|
  json.extract! puja, :id, :product_id_id, :user_id_id
  json.url puja_url(puja, format: :json)
end
