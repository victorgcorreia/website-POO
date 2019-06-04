json.extract! volunteer, :id, :cpf, :address, :tel, :birthdate, :user_id, :bio, :created_at, :updated_at
json.url volunteer_url(volunteer, format: :json)
