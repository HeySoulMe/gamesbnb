require "faker"
require 'date'
require "open-uri"


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

boardgame = Boardgame.create!(
  name: 'Seven Wonders',
  description: 'A nice game',
  category: 'TotalWar',
  players: 4,
  price: 7,
  user: user)
file = URI.open('https://alloescape.fr/wp-content/uploads/2018/05/7-wonders-vf.jpg')
boardgame.photos.attach(io: file, filename: 'sevenwonder.jpg', content_type: 'image/jpg')

user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Perudo',
  description: 'A terrible game',
  category: 'Dices',
  players: 3,
  price: 3,
  user: user)
file = URI.open('https://m.media-amazon.com/images/S/aplus-media/vc/33305101-d370-4de8-9f15-1e231e560dc4.__CR0,0,970,600_PT0_SX970_V1___.png')
boardgame.photos.attach(io: file, filename: 'perudo.png', content_type: 'image/png')

user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Catan',
  description: 'What a great game! 100% would play again',
  category: 'Resources management',
  players: 3,
  price: 6,
  user: user)
file = URI.open('https://www.espritjeu.com/upload/image/catan-p-image-65490-moyenne.jpg')
boardgame.photos.attach(io: file, filename: 'catan.jpg', content_type: 'image/jpg')

user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Yaams',
  description: 'I got so lucky game',
  category: 'Dices',
  players: 2,
  price: 3,
  user: user)
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/913eRdQEQzL._AC_SL1500_.jpg')
boardgame.photos.attach(io: file, filename: 'Yam.jpg', content_type: 'image/jpg')

user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!


boardgame = Boardgame.create!(
  name: 'Le fantôme de McGregor',
  description: 'Nice to play with my children',
  category: 'Kids',
  players: 3,
  price: 3,
  user: user)
file = URI.open('https://www.jedisjeux.net/media/cache/full/uploads/img/p-1225.jpg')
boardgame.photos.attach(io: file, filename: 'fantome_de_mcgregor.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Question pour un champion',
  description: 'Difficult especially if you are not french',
  category: 'TV game',
  players: 2,
  price: 5,
  user: user)
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/91HgOtj94RL._AC_SY355_.jpg')
boardgame.photos.attach(io: file, filename: 'question_pour_un_champion.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Uno',
  description: 'Very fun, boom +4 for you!',
  category: 'Card game',
  players: 2,
  price: 2,
  user: user)
file = URI.open('https://image.api.playstation.com/cdn/UP0001/CUSA04071_00/EXPdKW5X20Bn8pHmpRm5S9x3nWJM0PCe.png')
boardgame.photos.attach(io: file, filename: 'uno.png', content_type: 'image/png')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Les aventuriers du rail',
  description: 'I lost a friend after playing this game',
  category: 'Resources management',
  players: 4,
  price: 7,
  user: user)
file = URI.open('https://www.cdiscount.com/pdt2/e/0/1/1/700x700/asmave01/rw/les-aventuriers-du-rail-usa-jeu-de-societe.jpg')
boardgame.photos.attach(io: file, filename: 'les_aventuriers_du_rail.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Pictionary',
  description: 'A nice game, too bad i can not draw properly',
  category: 'Drawings',
  players: 2,
  price: 8,
  user: user)
file = URI.open('https://www.rueducommerce.fr/medias/a72c3125fb76397293ba77705c85d94b/p_1000x1000/0887961236101-dkd50-6.jpg')
boardgame.photos.attach(io: file, filename: 'pictionary.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Blanc manger coco',
  description: 'Awkward! I will not play with my mother in law anymore',
  category: 'Card game',
  players: 3,
  price: 2,
  user: user)
file = URI.open('https://www.espritjeu.com/upload/image/blanc-manger-coco-p-image-65787-grande.jpg')
boardgame.photos.attach(io: file, filename: 'blanc_manger_coco.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Risk',
  description: 'Very long game...',
  category: 'TotalWar',
  players: 4,
  price: 7,
  user: user)
file = URI.open('https://www.espritjeu.com/upload/image/risk-nouvelle-edition-p-image-60507-grande.jpg')
boardgame.photos.attach(io: file, filename: 'risk.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Monopoly',
  description: 'I went from rich to very poor and I blame the game for that',
  category: 'Resources management',
  players: 3,
  price: 7,
  user: user)
file = URI.open('https://www.jouets-sajou.com/44302-large_default/monopoly-mauvais-perdants-jeu-de-societe-jeu-de-plateau-version-francaise.jpg')
boardgame.photos.attach(io: file, filename: 'monopoly.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Dany',
  description: 'A nice discovery, did not know about this masterpiece',
  category: 'Guesser',
  players: 4,
  price: 5,
  user: user)
file = URI.open('https://cdn1.philibertnet.com/430012-large_default/dany.jpg')
boardgame.photos.attach(io: file, filename: 'dany.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'La route des épices',
  description: 'Very cool, it is a french version',
  category: 'Resources management',
  players: 4,
  price: 4,
  user: user)
file = URI.open('https://escaleajeux.fr/r/r_epi_02.jpg')
boardgame.photos.attach(io: file, filename: 'la_route_des_epices.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Cluedo',
  description: 'Loved it!',
  category: 'Guesser',
  players: 3,
  price: 7,
  user: user)
file = URI.open('https://www.espritjeu.com/upload/image/cluedo-p-image-60570-grande.jpg')
boardgame.photos.attach(io: file, filename: 'cluedo.jpg', content_type: 'image/jpg')


user = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user.save!

boardgame = Boardgame.create!(
  name: 'Puissance 4',
  description: 'Too short',
  category: 'Strategy',
  players: 2,
  price: 4,
  user: user)
file = URI.open('https://www.espritjeu.com/upload/image/puissance-4-p-image-71452-grande.jpg')
boardgame.photos.attach(io: file, filename: 'puissance_quatro.jpg', content_type: 'image/jpg')

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

