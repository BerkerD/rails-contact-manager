json.extract! email_address, :id, :address, :person_id, :created_at, :updated_at
json.url email_address_url(email_address, format: :json)
