# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeding users
tyle = User.create(
 :username => 'Tyle325', :email=>'tyle@email.com', :password=>'password325'
)
user = User.create(
:username => 'auser', :email => 'user@email.com', :password => 'password123')
# Seeding pins
tyle.pins.create(:title=>"Origami", :media_url=> 'https://www.phgmag.com/wp-content/uploads/2018/09/PHG1018Origami05.jpg')

# Seeding comments
user.comments.create(:body=>"auser commenting", :pin_id=>'1')

 # Seeding boards
user.boards.create(:name=>"Origami collections")