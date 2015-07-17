# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create({ name: 'Tiny Tim', username: 'TinyT', email: 'ttim@yahoo.com', password: 'password', password_confirmation: 'password' })

user2 = User.create({
	name: 'Billie Blue',
	username: 'Blueboy',
	email: 'bblue@yahoo.com',
	password: 'password',
	password_confirmation: 'password'
	})

user3 = User.create({
	name: 'Linda Lou',
	username: 'LindaL',
	email: 'lindalou@yahoo.com',
	password: 'password',
	password_confirmation: 'password'
	})

post1 = Post.create({
	title: "Laptop",
	status: "LOST",
	description: "brand new apple macbook air",
	location: "275 Battery St",
	date: "Tues, July 14",
	user_id: 3 })

post2 = Post.create({
	title: "Baby Hippo",
	status: "FOUND",
	description: "I found your baby Hippo. PLEASE COME GET HER!",
	location: "3337 Fulton St",
	date:"Sunday, 7/12",
	user_id:3 })

post3 = Post.create({
	title: "Fluffy Puppy",
	status: "LOST",
	description: "He's white and fluffy, about 3 months old.",
	location: "1100 Broderick",
	date: "Sat. 7/11", 
	user_id:3 })

post4 = Post.create({
	title: "Wandering Duck",
	status: "FOUND",
	description: "White duck with orange bill and feet. Quite noisy, too.",
	location: "600 Bay St.",
	date: "Mon, July 13",
	user_id: 3 })

post5 = Post.create({
	title: "Tabby Cat - Male",
	status: "LOST",
	description: "approx. 3 yrs old, tan and grey tabby",
	location: "1300 Fulton St",
	date: "Sat. 7/11",
	user_id: 2 })

post6 = Post.create({
	title: "Baby Hippo! LOST!",
	status: "LOST",
	description: "We were swimming at the beach and now she's LOST!",
	location: "Ocean Beach",
	date: "Sat. 7/11",
	user_id: 2 })

post7 = Post.create({
	title: "Wedding ring",
	status: "FOUND",
	description: "In my cereal box. Locally produced granola. Contact me with reward, sucka!",
	location: "500 Beach St",
	date: "Sunday, 7/12",
	user_id: 2 })

post8 = Post.create({
	title: "Lost Watch",
	status: "LOST",
	description: "It's a cheap watch made in China but I still want it back.",
	location: "1300 Fulton",
	date: "July 11",
	user_id: 2 })

post9 = Post.create({
	title: "Ladies Diamond watch",
	status: "FOUND",
	description: "Not sure if these are real, but I don't care. I'll be happy to return your watch.",
	location: "631 Hayes St",
	date: "Mon, July 13",
	user_id: 2 })
