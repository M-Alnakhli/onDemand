json.extract! cart, :id, :status, :user_id, :product_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
