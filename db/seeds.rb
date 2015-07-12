# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create({ name: 'Tiny Tim', username: 'TinyT', email: 'ttim@yahoo.com', password: 'password', password_confirmation: 'password' })
post1 = Post.create({ title: 'Lost Watch', status: 'LOST', description: 'Lorem ipsum, lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem', location: '1300 Fulton', date: 'July 11', user_id: 1 })
