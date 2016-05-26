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
  user  = User.create!(
  name:       Faker::Name.name,
  email:      Faker::Internet.email,
  password:   "helloworld",
  bio:        Faker::Hipster.word,
  )

user.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
user.update_attribute(:created_at, rand(1.minute .. 9.minutes).ago)

end


users = User.all

# Create Lists
15.times do
  list = List.create!(
  user:         users.sample,
  title:        Faker::Hacker.noun,
  description:  Faker::App.name,
  emoji:        Faker::SlackEmoji.emoji,
  viewable:     true,
  public:       false
  )

  list.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
  list.update_attribute(:created_at, rand(1.minute .. 9.minutes).ago)


end

lists = List.all


# Create Items
75.times do
  item = Item.create!(
  list:         lists.sample,
  title:        Faker::Superhero.name,
  description:  Faker::Superhero.power,
  complete:     false,
  viewable:     true,
  public:       false
)

item.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
item.update_attribute(:created_at, rand(1.minute .. 9.minutes).ago)

end


#print results
puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"
