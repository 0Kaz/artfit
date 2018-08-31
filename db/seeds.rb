# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

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

PHOTO.each do |photo|
  user = User.create(email: Faker::Internet.email)
  theme = @themes.sample
  design = Design.new(name: Faker::Artist.name, theme: theme, user: user)
  design.remote_photo_url = photo
  design.save
end

