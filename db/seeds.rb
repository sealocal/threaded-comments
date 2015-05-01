# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Comment.destroy_all

10.times do
  first_level_comment = Comment.create({
      full_name: 'User One',
      email: 'user.one@example.com',
      content: 'First-level comment',
      comment_id: nil
  })
  second_level_comment = Comment.create({
    full_name: 'User Two',
    email: 'user.two@example.com',
    content: 'Second-level comment',
    comment_id: first_level_comment.id
  })
  third_level_comment = Comment.create({
    full_name: 'User One',
    email: 'user.one@example.com',
    content: "You're entitled to your opinion!",
    comment_id: second_level_comment.id
  })
end

puts "*** #{Comment.count} comments created ***"
