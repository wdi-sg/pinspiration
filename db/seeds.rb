# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#   User.create(
#     email: FFaker::Internet.email,
#     password: FFaker::Internet.password,
#     username: FFaker::Internet.unique.user_name
#   )
# end

Pin.create(pin_url: "https://img.theculturetrip.com/768x432/wp-content/uploads/2018/05/architecture-3327884_1280-e1527698130762.jpg", title: FFaker::HipsterIpsum.phrase, user_id: 2 )
Pin.create(pin_url: "https://media.cntraveler.com/photos/5cb63a5211a45eb1f830373c/master/pass/Wulingyuan-Scenic-Area-China_GettyImages-159228516.jpg", title: FFaker::HipsterIpsum.phrase, user_id: 3)
Pin.create(pin_url: "https://www.bemytravelmuse.com/wp-content/uploads/2017/04/thailandbackpackerroute.jpg.optimal.jpg", title: FFaker::HipsterIpsum.phrase, user_id: 4)
Pin.create(pin_url: "https://www.dessertfortwo.com/wp-content/uploads/2019/02/red-velvet-cake-recipe-3-480x480.jpg", title: FFaker::HipsterIpsum.phrase, user_id: 5)
Pin.create(pin_url: "https://coonawarra.org/wp-content/uploads/2017/04/Blok-High-Tea.png", title: FFaker::HipsterIpsum.phrase, user_id: 5)
Pin.create(pin_url: "https://sethlui.com/wp-content/uploads/2015/03/symmetry-cafe-2403.jpg", title: FFaker::HipsterIpsum.phrase, user_id: 7)
Pin.create(pin_url: "https://cdn.popmenu.com/image/upload/fgs7ujwmvysa5nuwgcb4.png", title: FFaker::HipsterIpsum.phrase, user_id: 8)
Pin.create(pin_url: "https://i.pinimg.com/originals/a7/aa/97/a7aa97863b4b8f7366c722a9ee17a80f.jpg", title: FFaker::HipsterIpsum.phrase, user_id: 9)
Pin.create(pin_url: "https://media-cdn.tripadvisor.com/media/photo-s/12/e5/d1/a1/art-cafe-dubrovnik.jpg", title: FFaker::HipsterIpsum.phrase, user_id: 7)
Pin.create(pin_url: "https://blog.bescene.sg/wp-content/uploads/2018/11/class2.jpg", title: FFaker::HipsterIpsum.phrase, user_id: 4)