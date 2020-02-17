# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# clear the uniqueness restriction
FFaker::UniqueUtils.clear

# and have one admin user (me) for testing.
User.create(email: 'stuart.myers@gmail.com', username: 'StuartAdmin', password: 'MyPassword1234')

# create 20 random users, each user will have one board at least.
i = 1 # it helps to have the counter initialised outside of the loop.
20.times do
  User.create(email: FFaker::Internet.email, username: FFaker::Internet.user_name, password: FFaker::Internet.password)
  Board.create(name: FFaker::DizzleIpsum.word, user_id: i)
  i += 1
end

# create 30 extra random boards and attach them
# The "RANDOM()" SQL direct query will be depreciated in Ruby 6, it's not a good idea.
30.times do
  Board.create(name: FFaker::DizzleIpsum.word, user: User.order("RANDOM()").first)
end

# create 20 tags
20.times do
  Tag.create(tag: FFaker::Lorem.unique.word)
end

# create 50 random pins
50.times do
  pin = Pin.new(
    title: FFaker::CheesyLingo.title,
    img_url: FFaker::Image.url,
    created_at: FFaker::Time.between(6.months.ago, 1.day.ago),
    # The "RANDOM()" SQL direct query will be depreciated in Ruby 6, it's not a good idea.
    user: User.order("RANDOM()").first
  )
  # The pin needs to be saved to a board that the owner of the pin has
  pin.board_id = pin.user.board.sample
  pin.save
end

# create 100 random comments
100.times do
  Comment.create(
    body: FFaker::CheesyLingo.sentence,
    created_at: FFaker::Time.between(6.months.ago, 1.day.ago),
    # The "RANDOM()" SQL direct query will be depreciated in Ruby 6, it's not a good idea.
    user: User.order("RANDOM()").first,
    pin: Pin.order("RANDOM()").first
  )
end

# 100 tags!
100.times do
  pin = Pin.order("RANDOM()").first
  tag = Tag.order("RANDOM()").first
  pin.tags << tag
  pin.save
end
