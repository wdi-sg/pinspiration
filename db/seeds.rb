# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user
amy = User.new(email: "amy@ga.com")
bob = User.new(email: "bob@gmail.co.sg")
charles = User.new(email: "charles@yay.com")


# pins
twins = Pin.new(title: "twins", image: "https://images.unsplash.com/photo-1579556752416-e00e5b09294b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80", user_id:3)
kicks = Pin.new(title: "kicks", image: "https://images.unsplash.com/photo-1577905570428-ee76572af707?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user_id: 2)
rolls = Pin.new(title:"rolls", image: "https://images.unsplash.com/photo-1569305773791-7b9246c0db75?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", user_id:1)
donut = Pin.new(title:"donut", image:"https://images.unsplash.com/photo-1569409431561-21090d1e901a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", user_id:1)

# comments



# boards
# foodie = Board.new(title: "" , user_id:1)


#boards_pins
# board_id: " " , pin_id: " "
