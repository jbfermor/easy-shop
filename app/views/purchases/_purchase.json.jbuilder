json.extract! purchase, :id, :purchase_date, :total_value, :user_id, :supplier_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
