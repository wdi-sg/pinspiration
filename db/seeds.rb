# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
     User.create(
        username: FFaker::Internet.user_name,
        email: FFaker::Internet.email,
        password: 'password123',
      )
end
users = User.all
users.each do |user|
  20.times do |n|
    user.pin.create({title: FFaker::Lorem.sentence,url: FFaker::Internet.domain_name})

  end
end





# 30.times do
#      Tag.create(
#         tagtext: FFaker::Lorem.word

#       )
# end