# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# (1..10).each do |i|
#   country = Country.create(name: Faker::Address.country)
#   (1..10).each do |j|
#     state = State.create(name: Faker::Address.state, country: country)
#     (1..10).each do |k|
#       city = City.create(name: Faker::Address.city, state: state)
#     end
#   end
# end

City.all.each do |city|
  (1..10).each do |count|
    company_name = Faker::Company.name
    Company.create(name: company_name, founding_year: rand(1950..2015), city: city)
    p "Saved - #{company_name} - #{count}"
  end
end
