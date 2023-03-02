json.extract! plant, :id, :name, :description, :capacity, :pv, :atk, :def, :image, :created_at, :updated_at
json.url plant_url(plant, format: :json)
