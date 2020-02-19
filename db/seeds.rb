Moissonneuse.destroy_all
User.destroy_all

puts 'Creating users...'

user_1 = User.create!(email: "astrid@gmail.com", password: "Astrid")
user_2 = User.create!(email: "thomas@gmail.com", password: "Thomas")
user_3 = User.create!(email: "jeremy@gmail.com", password: "Jeremy")
user_4 = User.create!(email: "pierre@gmail.com", password: "Pierre")

puts 'Finished users creation!'

puts 'Creating moissonneuses...'

moissonneuse_1 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2020',
description: 'Moi je te la loue après t\'en fais ce que tu veux gadjo',
address: '77000',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_1,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_1.jpeg')].first)
moissonneuse_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_1.save!

moissonneuse_2 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2019',
description: 'Elle est belle, elle coupe et ramasse bien le blé',
address: '37000',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_1,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_2.jpeg')].first)
moissonneuse_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_2.save!

moissonneuse_3 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2018',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '21000',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_2,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_3.jpeg')].first)
moissonneuse_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_3.save!

moissonneuse_4 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2017',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '38000',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_2,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_4.jpeg')].first)
moissonneuse_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_4.save!

moissonneuse_5 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2016',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '29200',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_3,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_5.jpeg')].first)
moissonneuse_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_5.save!

moissonneuse_6 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2015',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '90400',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_3,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_6.jpeg')].first)
moissonneuse_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_6.save!

moissonneuse_7 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2014',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '59000',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_4,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_7.jpeg')].first)
moissonneuse_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_7.save!

moissonneuse_8 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2013',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '63000',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_4,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_8.jpeg')].first)
moissonneuse_8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_8.save!

moissonneuse_9 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2012',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '56000',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_1,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_9.jpeg')].first)
moissonneuse_9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_9.save!

moissonneuse_10 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2011',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '22000',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_1,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_10.jpeg')].first)
moissonneuse_10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_10.save!

moissonneuse_11 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2010',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '70000',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_2,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_11.jpeg')].first)
moissonneuse_11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_11.save!

moissonneuse_12 = Moissonneuse.new(
name: 'Moissonneuse-batteuse 2009',
description: 'Jolie machine. Bon rapport qualité prix. Top du moment.',
address: '24100',
brand: ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"].sample,
model: %w(V100 V210 SL200 SQ300 SL560).sample,
power: %w(250, 350, 400, 500).sample,
user: user_2,
price: %w(1000 2000 3550 4500 5500 6500).sample)
file = File.open([File.join(File.dirname(__FILE__), '../app/assets/images/moissonneuse_12.jpeg')].first)
moissonneuse_12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
moissonneuse_12.save!

puts 'Finished moissonneuses creation!'
