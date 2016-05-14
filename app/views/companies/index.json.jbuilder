json.array!(@companies) do |company|
  json.extract! company, :id, :name, :founding_year, :city_id
  json.url company_url(company, format: :json)
end
