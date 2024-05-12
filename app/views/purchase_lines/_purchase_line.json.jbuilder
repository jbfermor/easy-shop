json.extract! purchase_line, :id, :purchase_id, :product_id, :quantity, :total, :created_at, :updated_at
json.url purchase_line_url(purchase_line, format: :json)
