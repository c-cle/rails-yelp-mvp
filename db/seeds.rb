# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.destroy_all

5.times do
  name = Faker::Restaurant.name
  category_restaurant = %w[chinese italian japanese french belgian].sample(1)[0]
  puts "'#{category_restaurant}'"
  address = Faker::Address.street_address
  phone_number = Faker::PhoneNumber.phone_number
  Restaurant.create!(name: name, category: category_restaurant, phone_number: phone_number, address: address)
end
