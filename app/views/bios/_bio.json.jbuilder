json.extract! bio, :id, :user_id, :first_name, :last_name, :email, :phone_number, :address, :state, :zipcode, :country, :gender, :age, :created_at, :updated_at
json.url bio_url(bio, format: :json)