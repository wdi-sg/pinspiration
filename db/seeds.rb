# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


# 10.times do 
#       Pin.create(title: Faker::Book.title, text: Faker::Lorem.paragraph, img_url: Faker::LoremFlickr.image(size:"400x300"), user: User.find(rand(User.first.id..User.last.id)))
#       Pin.create(title: Faker::Book.title, text: Faker::Lorem.paragraph, img_url: Faker::LoremFlickr.image(size:"400x300"), user: User.find(rand(User.first.id..User.last.id)))
#       Pin.create(title: Faker::Book.title, text: Faker::Lorem.paragraph, img_url: Faker::LoremFlickr.image(size:"400x300"), user: User.find(rand(User.first.id..User.last.id)))
#       Pin.create(title: Faker::Book.title, text: Faker::Lorem.paragraph, img_url: Faker::LoremFlickr.image(size:"400x400"), user: User.find(rand(User.first.id..User.last.id)))
#       Pin.create(title: Faker::Book.title, text: Faker::Lorem.paragraph, img_url: Faker::LoremFlickr.image(size:"150x150"), user: User.find(rand(User.first.id..User.last.id)))
#       Pin.create(title: Faker::Book.title, text: Faker::Lorem.paragraph, img_url: Faker::LoremFlickr.image(size:"300x400"), user: User.find(rand(User.first.id..User.last.id)))
#       Pin.create(title: Faker::Book.title, text: Faker::Lorem.paragraph, img_url: Faker::LoremFlickr.image(size:"300x200"), user: User.find(rand(User.first.id..User.last.id)))
#       Pin.create(title: Faker::Book.title, text: Faker::Lorem.paragraph, img_url: Faker::LoremFlickr.image(size:"300x500"), user: User.find(rand(User.first.id..User.last.id)))
# end

# 50.times do
#       Comment.create(text: Faker::Lorem.paragraph, pin: Pin.find(rand(Pin.first.id..Pin.last.id)), user: User.find(rand(User.first.id..User.last.id)))
# end

35.times do
      Tag.create(name: Faker::Verb.base)
end