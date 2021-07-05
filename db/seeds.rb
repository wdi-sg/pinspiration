# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    Pin.create(
        title: FFaker::Book.title,
        image_url: FFaker::Image.url,
        user_id: 1,
        created_at: FFaker::Time.datetime,
        updated_at: FFaker::Time.datetime
    )
end