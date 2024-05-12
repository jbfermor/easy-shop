json.extract! bio, :id, :name, :surname1, :surname2, :address, :city, :province, :postal_code, :phone, :user_id, :created_at, :updated_at
json.url bio_url(bio, format: :json)
