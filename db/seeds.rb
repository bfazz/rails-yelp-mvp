# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
frontera = {name: 'Frontera', address: 'Ipanema, Rio de Janeiro, RJ', phone_number: '55213232000', category: 'japanese'}
spoletto = {name: 'Spoletto', address: 'Flamengo, Rio de Janeiro, RJ', phone_number: '552132320030', category: 'italian'}
fazendola = {name: 'Fazendola', address: 'Ipanema, Rio de Janeiro, RJ', phone_number: '552132320300', category: 'italian'}
mammamia = {name: 'Mammamia', address: 'Botafogo, Rio de Janeiro, RJ', phone_number: '552132329000', category: 'italian'}
foodcompany = {name: 'Foodcompany', address: 'Copacabana, Rio de Janeiro, RJ', phone_number: '552132320080', category: 'italian'}

[frontera, spoletto, fazendola, mammamia, foodcompany].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
