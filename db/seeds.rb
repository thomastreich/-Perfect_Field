# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Moissonneuse.destroy_all
User.destroy_all

puts 'Creating users...'

user_1 = User.create!(email: "astrid@gmail.com", password: "Astrid")
user_2 = User.create!(email: "astridaubert@gmail.com", password: "AstridAubert")

puts "Finished users' creation!"


puts 'Creating moissonneuses...'

moissonneuse_1 = Moissonneuse.create!(name: 'moissonneuse 1',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
  power: "power 1",
  address: "address 1",
  brand: "Massey Ferguson",
  model: "model 1",
  user: user_1)

moissonneuse_2 = Moissonneuse.create!(name: 'moissonneuse 2',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
  power: "power 2",
  address: "address 2",
  brand: "Massey Ferguson",
  model: "model 2",
  user: user_2)

puts "Finished moisssonneuses' creation!"
