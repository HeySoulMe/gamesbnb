require "faker"
require 'date'

Booking.destroy_all
Boardgame.destroy_all
User.destroy_all

# user seed
user = User.new(
  username: "Test User 1st",
  first_name: "Edouard",
  last_name: "Belfond",
  email: "edouard@park_easy.com",
  password: 123456
  )
user.save!


Boardgame.create!(
  name: 'Seven Wonders',
  description: 'A nice game',
  category: 'TotalWar',
  players: 4,
  price: 25,
  user: user)

user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Perudo',
  description: 'A terrible game',
  category: 'Dices',
  players: 3,
  price: 25,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Catan',
  description: 'What a great game! 100% would play again',
  category: 'Resources management',
  players: 3,
  price: 25,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Yaams',
  description: 'I got so lucky game',
  category: 'Dices',
  players: 2,
  price: 25,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!


Boardgame.create!(
  name: 'Le fantôme de McGregor',
  description: 'Nice to play with my children',
  category: 'Kids',
  players: 3,
  price: 25,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Question pour un champion',
  description: 'difficult especially if you are not french',
  category: 'TV game',
  players: 2,
  price: 30,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Uno',
  description: 'Very fun, boom +4 for you!',
  category: 'Card game',
  players: 2,
  price: 12,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Les aventuriers du rail',
  description: 'I lost a friend after playing this game',
  category: 'Resources management',
  players: 4,
  price: 30,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Pictionnary',
  description: 'A nice game, too bad i can not draw properly',
  category: 'Drawings',
  players: 2,
  price: 20,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Blanc mangez coco',
  description: 'Awkward! I will not play with my mother in law anymore',
  category: 'Card game',
  players: 3,
  price: 18,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Risk',
  description: 'Very long game...',
  category: 'TotalWar',
  players: 4,
  price: 28,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Monopoly',
  description: 'I went from rich to very poor and I blame the game for that',
  category: 'Resources management',
  players: 3,
  price: 31,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Dani',
  description: 'A nice discovery, did not know about this masterpiece',
  category: 'Guesser',
  players: 4,
  price: 32,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'La route des épices',
  description: 'Very cool, it is a french version',
  category: 'Resources management',
  players: 4,
  price: 25,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Cluedo',
  description: 'Loved it!',
  category: 'Guesser',
  players: 3,
  price: 21,
  user: user)


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

Boardgame.create!(
  name: 'Puissance 4',
  description: 'Too short',
  category: 'Strategy',
  players: 2,
  price: 20,
  user: user)

# bookings see

Booking.create!(
  start_at: Faker::Date.between(from: 10.days.ago, to: Date.today),
  end_at: DateTime.strptime("01/31/2021 12:00", "%m/%d/%Y %H:%M"),
  user: User.find(1),
  boardgame: Boardgame.find(15)
  )

# ###

Booking.create!(
  start_at: Faker::Date.between(from: 10.days.ago, to: Date.today),
  end_at: DateTime.strptime("02/27/2021 17:00", "%m/%d/%Y %H:%M"),
  user: User.find(2),
  boardgame: Boardgame.find(14)
  )

# ###

Booking.create!(
  start_at: Faker::Date.between(from: 10.days.ago, to: Date.today),
  end_at: DateTime.strptime("03/02/2021 14:00", "%m/%d/%Y %H:%M"),
  user: User.find(3),
  boardgame: Boardgame.find(13)
  )

