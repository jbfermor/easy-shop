json.extract! product, :id, :name, :description, :price, :stock, :active, :user_id, :supplier_id, :created_at, :updated_at
json.url product_url(product, format: :json)
json.description product.description.to_s
