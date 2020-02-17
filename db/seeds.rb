# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
# Seeding users
10.times do
     User.create(
        username: FFaker::Internet.user_name,
        email: FFaker::Internet.email,
        password: 'password123',
      )
end

# Seeding pins
User.first.pins.create(:title=>"Origami", :media_url=> 'https://www.phgmag.com/wp-content/uploads/2018/09/PHG1018Origami05.jpg')

# Seeding comments
User.first.comments.create(:body=>"auser commenting", :pin_id=>'1')

 # Seeding boards
User.first.boards.create(:name=>"Origami collections")