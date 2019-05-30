json.extract! pet, :id, :name, :description, :details, :image, :link, :owner, :available, :age, :user_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
