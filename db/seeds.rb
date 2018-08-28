# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Design.destroy_all
User.destroy_all

10.times do
  user = User.create(email: Faker::Internet.email)
  Design.create(name: Faker::Artist.name, theme: Faker::Music.genre, user: user)
end
