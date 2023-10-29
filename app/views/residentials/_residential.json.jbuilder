# json.extract! residential, :id, :created_at, :updated_at
# json.url residential_url(residential, format: :json)

json.id residential.id
json.description residential.description
json.year_built residential.year_built
json.square_feet residential.square_feet
json.bedrooms residential.bedrooms
json.bathrooms residential.bathrooms
json.floors residential.floors
json.availability residential.availability
json.address residential.address
json.price residential.price
json.created_at residential.created_at
json.updated_at residential.updated_at
