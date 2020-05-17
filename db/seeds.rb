# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


one = Pin.new(title: "Staggered tall buildings", photo_url: "https://i.picsum.photos/id/221/350/350.jpg", caption: "looks good", user_id: 1)
one.save

two = Pin.new(title: "Typewriter parts", photo_url: "https://i.picsum.photos/id/252/500/500.jpg", caption: "I think so.", user_id: 1)
two.save

three = Pin.new(title: "Library", photo_url: "https://i.picsum.photos/id/444/400/600.jpg", caption: "Cannot finish reading all those books even if I stay there.", user_id: 1)
three.save

four = Pin.new(title: "Ruler", photo_url: "https://i.picsum.photos/id/533/350/350.jpg", caption: "Rulers always rules. Especially folded ones.", user_id: 1)
four.save

five = Pin.new(title: "Hot-air Balloons", photo_url: "https://i.picsum.photos/id/533/400/400.jpg", caption: "High up in the air.", user_id: 1)
five.save