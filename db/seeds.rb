# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
# Create Users
5.times do
  User.create!(
  name:       Faker::Name.name,
  email:      Faker::Internet.email,
  password:   "helloworld",
  bio:        Faker::Hipster.paragraph,
  created_at: rand(10.minutes .. 1.year).ago,
  updated_at: rand(10.minutes .. 1.year).ago
  )
end

users = User.all

# Create Lists
15.times do
  List.create!(
  user_id:    users.sample(1),
  title:      Faker::Hipster.word,
  emoji:      Faker::SlackEmoji.emoji,
  created_at: rand(10.minutes .. 1.year).ago,
  updated_at: rand(10.minutes .. 1.year).ago
  )
end

lists = List.all

# Create Items
75.times do
  Item.create!(
  list_id:      lists.sample(1),
  task:         Faker::Superhero.power,
  description:  Faker::Hipster.sentence,
  created_at:   rand(10.minutes .. 1.year).ago,
  updated_at:   rand(10.minutes .. 1.year).ago
)
end
#print results
puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"
