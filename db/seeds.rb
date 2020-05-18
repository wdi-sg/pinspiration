# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'ffaker'
# require 'faker'
# require 'image_suckr'

# # Pin.create({title:'First',url: 'https://i.picsum.photos/id/755/400/400.jpg'})

# # Pin.create({title:'Second',url: 'https://i.picsum.photos/id/756/400/400.jpg'})

# # Pin.create({title:'Third',url: 'https://i.picsum.photos/id/757/400/400.jpg'})

# # Pin.create(title:'Fourth',url: 'https://i.picsum.photos/id/758/400/400.jpg' , user_id: 1)

# # fakeTitle = FFaker::DizzleIpsum.phrase;
# # Pin.create(title: Faker::Ancient.titan ,url: 'https://i.picsum.photos/id/111/400/400.jpg', user_id: 2)

# # pin = Pin.new(title: FFaker::DizzleIpsum.phrase, url: '')
# # pin.save


# suckr = ImageSuckr::GoogleSuckr.new

# 2.times do
#     Pin.create([{
#        title: Faker::Ancient.titan,
#        url: suckr.get_image_url,
#        user_id: 1}]
#      ) 
# end 

# 2.times do
#     Pin.create([{
#         title: FFaker::DizzleIpsum.phrase,
#         url: suckr.get_image_url,
#        user_id: 2}]
#      ) 
# end 