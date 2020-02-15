# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# and have one admin user (me) for testing.
User.create(email: 'stuart.myers@gmail.com', username: 'StuartAdmin', password: 'MyPassword1234')

# create 20 random users
20.times do
  User.create(email: FFaker::Internet.email, username: FFaker::Internet.user_name, password: FFaker::Internet.password)
end

# create 50 random pins
50.times do
  Pin.create(
    title: FFaker::CheesyLingo.title,
    img_url: FFaker::Image.url,
    created_at: FFaker::Time.between(6.months.ago, 1.day.ago),
    user_id: (rand(20) + 1)
  )
end

# create 100 random comments
100.times do
  Comment.create(
    body: FFaker::CheesyLingo.sentence,
    created_at: FFaker::Time.between(6.months.ago, 1.day.ago),
    user_id: (rand(20) + 1),
    pin_id: (rand(49) + 1)
  )
end
