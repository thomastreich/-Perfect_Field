Moissonneuse.destroy_all
User.destroy_all

puts 'Creating users...'

user_1 = User.create!(email: "astrid@gmail.com", password: "Astrid")
user_2 = User.create!(email: "astridaubert@gmail.com", password: "AstridAubert")
user_3 = User.create!(email: "thomas@gmail.com", password: "Thomas")

puts 'Finished users creation!'

puts 'Creating moissonneuses...'

moissonneuse_1 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2020',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment. Jolie machine. Bon rapport qualité prix. Top du moment',
address: %w(75000 77000 37000 21000 38000).sample,
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_1)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_1.jpeg')].first)
moissonneuse_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_1.save!

moissonneuse_2 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2019',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment. Jolie machine. Bon rapport qualité prix. Top du moment',
address: %w(75000 77000 37000 21000 38000).sample,
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_1)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_2.jpeg')].first)
moissonneuse_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_2.save!

moissonneuse_3 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2018',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment. Jolie machine. Bon rapport qualité prix. Top du moment',
address: %w(75000 77000 37000 21000 38000).sample,
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_2)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_3.jpeg')].first)
moissonneuse_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_3.save!

moissonneuse_4 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2017',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment. Jolie machine. Bon rapport qualité prix. Top du moment',
address: %w(75000 77000 37000 21000 38000).sample,
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_2)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_4.jpeg')].first)
moissonneuse_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_4.save!

moissonneuse_5 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2016',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment. Jolie machine. Bon rapport qualité prix. Top du moment',
address: %w(75000 77000 37000 21000 38000).sample,
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_3)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_5.jpeg')].first)
moissonneuse_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_5.save!

moissonneuse_6 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2015',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment. Jolie machine. Bon rapport qualité prix. Top du moment',
address: %w(75000 77000 37000 21000 38000).sample,
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_3)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_6.jpeg')].first)
moissonneuse_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_6.save!

puts 'Finished moissonneuses creation!'
