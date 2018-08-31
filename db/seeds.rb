# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Hello Seeder! :)'

puts 'Purging the DB'

Basket.destroy_all
Design.destroy_all
Order.destroy_all
User.destroy_all
PHOTO = [
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543330/img15.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543326/img11.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543326/img10.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543326/img6.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543324/img5.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543322/img2_copie.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543322/img1_copie.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543328/img3.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543333/img16.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543331/img16_copie.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543329/img14.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543327/img12_copie.png",
  "https://res.cloudinary.com/kzkjr/image/upload/v1535543328/img13_copie.png"
]
puts 'Getting some pics from Cloudinary'

PHOTO.each do |photo|

  user = User.create(email: Faker::Internet.email,password: "123456")
  design = Design.new(name: Faker::Artist.unique.name, theme: Faker::Music.unique.genre, user: user)
  design.remote_photo_url = photo
  design.save
  puts 'so many loops'
end
  array = []
 @designs = Design.all
 @designs.each do |design|
 array << design.theme.to_s
 end
 array.each do |theme|
   3.times do
    user= User.all.sample
    design = Design.new(name: Faker::BossaNova.unique.artist, theme: theme, user: user)
    design.remote_photo_url = PHOTO.sample
    design.save
   end
   puts 'ended last loop'
 end

puts 'Finshed -- need more seeds'



