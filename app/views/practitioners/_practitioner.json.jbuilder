json.extract! practitioner, :id, :name, :surname, :job, :phone, :address, :city, :created_at, :updated_at
json.url practitioner_url(practitioner, format: :json)
