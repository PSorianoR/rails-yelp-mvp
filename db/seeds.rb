# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
restaurants = [{ name: 'temakeria', address: 'JB', category: 'japanese' },
               { name: 'Babo Osteria', address: 'Ipanema', category: 'italian' },
               { name: 'Paris 6', address: 'Barra da Tijuca', category: 'french' },
               { name: 'China Inbox', address: 'Tijuca', category: 'chinese' },
               { name: 'Benedito', address: 'Copacabana', category: 'belgian' }]

restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end
