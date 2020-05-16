# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

twilight = Pin.create!(title:"Twilight Sparkle", image_url:"https://vignette.wikia.nocookie.net/mlp/images/b/bc/Princess_Twilight_Sparkle_ID_S4E26.png/revision/latest/scale-to-width-down/340?cb=20160207045127", user_id:1)
pinkie = Pin.create!(title:"Pinkie Pie", image_url:"https://vignette.wikia.nocookie.net/mlp/images/b/b2/Pinkie_Pie_ID_S4E11.png/revision/latest?cb=20190410214815", user_id:1)
rarity = Pin.create!(title:"Rarity", image_url:"https://vignette.wikia.nocookie.net/mlp/images/d/d1/Rarity_standing_S1E19_CROPPED.png/revision/latest?cb=20130418142043", user_id:1)
applejack = Pin.create!(title:"https://vignette.wikia.nocookie.net/mlp/images/d/d8/Applejack_S01E13_cropped.png/revision/latest?cb=20130419182236", image_url:"", user_id:1)

twilight_comment = Comment.create!(body:"Being an Alicorn is just unfair. Like as if having magic is not already OP, but she also gets wings??",pin_id:1,user_id:1)
pinkie_comment = Comment.create!(body:"Must be nice for your life's calling be 'Partying'.",pin_id:2,user_id:1)
rarity_comment = Comment.create!(body:"All these magic powers.. let's use it to sew.",pin_id:3,user_id:1)
applejack_comment = Comment.create!(body:"Invited to a royal gala. Sells apples there.",pin_id:4,user_id:1)