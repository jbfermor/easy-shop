json.extract! supplier, :id, :name, :cif, :address, :city, :province, :postal_code, :contact_person, :phone, :mail, :user_id, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
