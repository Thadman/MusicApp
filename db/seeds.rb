# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
Band.create(
  name: Faker::Music.band,
  album_title: Faker::Music.album,
  date_started: Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today)
)
puts "created bands and albums"

end


# 5.times do 
#   Band.create(
#     name: Faker::Name.name, 
#     notability: Faker::Job.title, 
#     profile_picture: "https://picsum.photos/200/300"
#   )
# end 


