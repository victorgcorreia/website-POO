json.extract! pet, :id, :name, :species, :details, :birthdate, :owner_id, :available, :volunteer_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
