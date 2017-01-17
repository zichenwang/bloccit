# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
   )
end

posts = Post.all

#Create Comments
100.times do
   Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
   )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

# Create Advertisements

Advertisement.create!(
  title: "first ad title ",
  body: "first ad body",
  price: 1
)

Advertisement.create!(
  title: "second ad title ",
  body: "second ad body",
  price: 2
)

Advertisement.create!(
  title: "third ad title ",
  body: "third ad body",
  price: 3
)

puts "#{Advertisement.count} advertisements created"
