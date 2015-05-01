# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Comment.destroy_all

Comment.create([
  {full_name: 'Seed One', email: 'seed-one@example.com', content: 'Lorem ipsum'},
  {full_name: 'Seed Two', email: 'seed-two@example.com', content: 'Lorem ipsum'}
])

puts "*** #{Comment.count} comments created ***"
