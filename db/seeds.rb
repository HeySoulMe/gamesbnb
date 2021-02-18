require 'date'
require "faker"
require "open-uri"


Booking.destroy_all
Boardgame.destroy_all
User.destroy_all

# user seed
user1 = User.new(
  username: "Test User 1st",
  first_name: "Edouard",
  last_name: "Belfond",
  email: "edouard@park_easy.com",
  password: 123456
  )
user1.save!

boardgame1 = Boardgame.create!(
  name: 'Seven Wonders',
  description: '7 Wonders is a dedicated deck card game that features ancient civilizations. It is very pleasant to play with friends',
  category: 'TotalWar',
  players: 4,
  price: 7,
  address: '55Bis Quai de Valmy, 75010 Paris',
  user: user1)
file = URI.open('https://akoatujou.fr/wp-content/uploads/2019/04/7_Wonders-1200x800-c-default.png')
boardgame1.photos.attach(io: file, filename: 'sevenwonder.jpg', content_type: 'image/jpg')

##
user2 = User.new(
  username: "Test User 2nd",
  first_name: "Alexandra",
  last_name: "Canuel",
  email: "alexandra@park_easy.com",
  password: 123456
  )
user2.save!

boardgame2 = Boardgame.create!(
  name: 'Tock',
  description: 'The tock game or tock game is a board game close to the game of little horses. It is played by two teams of two diametrically opposed players, each with four pawns. The winning team is the first to return its 4 pawns per team member to its "house".',
  category: 'Kids',
  players: 2,
  price: 5,
  address: '1 Avenue Claude Vellefaux, 75010 Paris',
  user: user2)
file = URI.open('https://cf.geekdo-images.com/8a6_5jcQ7X46EIKFEeyW9g__opengraph_left/img/ymAfP59qzWdichydYUFMQ4G52GM=/fit-in/445x445/filters:strip_icc()/pic989128.jpg')
boardgame2.photos.attach(io: file, filename: 'tock.jpg', content_type: 'image/jpg')

##
user3 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user3.save!

boardgame3 = Boardgame.create!(
  name: 'Perudo',
  description: 'This game can be played by two or more players and consists of guessing how many dice, placed under cups, there are on the table showing a certain number. The player who loses a round loses one of their dice. The last player to still have dice is the winner.',
  category: 'Dices',
  players: 3,
  price: 3,
  address: '8 Rue Léon Schwartzenberg, 75010 Paris',
  user: user3)
file = URI.open('https://m.media-amazon.com/images/S/aplus-media/vc/33305101-d370-4de8-9f15-1e231e560dc4.__CR0,0,970,600_PT0_SX970_V1___.png')
boardgame3.photos.attach(io: file, filename: 'perudo.png', content_type: 'image/png')

##
user4 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user4.save!

boardgame4 = Boardgame.create!(
  name: 'Catan',
  description: 'Players build settlements, cities, and roads to connect them as they settle the island.',
  category: 'Resources management',
  players: 3,
  price: 6,
  address: '77 Rue de Varenne, 75007 Paris',
  user: user4)
file = URI.open('https://steamcdn-a.akamaihd.net/steam/apps/544730/capsule_616x353.jpg?t=1572340135')
boardgame4.photos.attach(io: file, filename: 'catan.jpg', content_type: 'image/jpg')

##
user5 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user5.save!

boardgame5 = Boardgame.create!(
  name: 'Yaams',
  description: 'Try to gain the maximum amount of points by getting multiple high value combinations!',
  category: 'Dices',
  players: 2,
  price: 3,
  address: '47 Rue des Couronnes, 75020 Paris',
  user: user5)
file = URI.open('https://static.fnac-static.com/multimedia/Images/FR/MDM/c1/29/38/3680705/1505-1/tsp20210205091935/Dujardin-Serie-Noire-Yam-421.jpg')
boardgame5.photos.attach(io: file, filename: 'Yam.jpg', content_type: 'image/jpg')

##
user6 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user6.save!

boardgame6 = Boardgame.create!(
  name: 'Le fantôme de McGregor',
  description: "try to escape from McGregor's castle without getting caught by the ghost! First one out wins!",
  category: 'Kids',
  players: 3,
  price: 3,
  address: '35 Rue du Chevalier de la Barre, 75018 Paris',
  user: user6)
file = URI.open('https://www.label-emmaus.co/media/ext/540x540/d1kvfoyrif6wzg.cloudfront.net/assets/images/None/main/f38955c1395c42c6d354cf4778b7e84f_d535320.jpg')
boardgame6.photos.attach(io: file, filename: 'fantome_de_mcgregor.jpg', content_type: 'image/jpg')

##
user7 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user7.save!

boardgame7 = Boardgame.create!(
  name: 'Questions pour un champion',
  description: 'Answer correctly and faster than the other participants and become the new champion!',
  category: 'TV game',
  players: 2,
  price: 5,
  address: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris',
  user: user7)
file = URI.open('https://escaleajeux.fr/q/qchaw_01.jpg')
boardgame7.photos.attach(io: file, filename: 'question_pour_un_champion.jpg', content_type: 'image/jpg')

##
user8 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user8.save!

boardgame8 = Boardgame.create!(
  name: 'Uno',
  description: "Get rid of all your cards before everyone else! Don't forget to say Uno!",
  category: 'Card game',
  players: 2,
  price: 2,
  address: '6 Parvis Notre-Dame - Pl. Jean-Paul II, 75004 Paris',
  user: user8)
file = URI.open('https://image.api.playstation.com/cdn/UP0001/CUSA04071_00/EXPdKW5X20Bn8pHmpRm5S9x3nWJM0PCe.png')
boardgame8.photos.attach(io: file, filename: 'uno.png', content_type: 'image/png')

##
user9 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user9.save!

boardgame9 = Boardgame.create!(
  name: 'Les aventuriers du rail',
  description: 'Reach your destinations and disrupt other players from achieving their goals!',
  category: 'Resources management',
  players: 4,
  price: 7,
  address: '15 Rue de Vaugirard, 75291 Paris',
  user: user9)
file = URI.open('https://images.oxybul.com/Photo/IMG_FICHE_PRODUIT/Image_C3/500x500/3/326801.jpg')
boardgame9.photos.attach(io: file, filename: 'les_aventuriers_du_rail.jpg', content_type: 'image/jpg')

##
user10 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user10.save!

boardgame10 = Boardgame.create!(
  name: 'Pictionary',
  description: 'One person draws and other players try to guess what is being drawn',
  category: 'Drawings',
  players: 4,
  price: 8,
  address: 'Place du Panthéon, 75005 Paris',
  user: user10)
file = URI.open('https://www.rueducommerce.fr/medias/a72c3125fb76397293ba77705c85d94b/p_1000x1000/0887961236101-dkd50-6.jpg')
boardgame10.photos.attach(io: file, filename: 'pictionary.jpg', content_type: 'image/jpg')

##
user11 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user11.save!

boardgame11 = Boardgame.create!(
  name: 'Blanc manger coco',
  description: 'Make funny sentences with the cards you drew, the funiest win!',
  category: 'Card game',
  players: 3,
  price: 2,
  address: '8 Rue de Montpensier, 75001 Paris',
  user: user11)
file = URI.open('https://blancmangercoco.com/wp-content/uploads/2020/03/BlancMangerCoco-GaletteComplete-photo3-scaled.jpg')
boardgame11.photos.attach(io: file, filename: 'blanc_manger_coco.jpg', content_type: 'image/jpg')


##
user12 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user12.save!

boardgame12 = Boardgame.create!(
  name: 'Risk',
  description: "Conquer the world and triomph from your ennemies with warchief's like strategies",
  category: 'TotalWar',
  players: 4,
  price: 7,
  address: 'Avenue Winston Churchill, 75008 Paris',
  user: user12)
file = URI.open('https://i.blogs.es/250667/risk-hasbro/450_1000.jpeg')
boardgame12.photos.attach(io: file, filename: 'risk.jpg', content_type: 'image/jpg')

##
user13 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user13.save!

boardgame13 = Boardgame.create!(
  name: 'Monopoly',
  description: 'Earn the maximum amount of cash and make other players go bankrupt!',
  category: 'Resources management',
  players: 3,
  price: 7,
  address: 'Place de la Madeleine, 75008 Paris',
  user: user13)
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81qy%2BMXuxDL._AC_SL1392_.jpg')
boardgame13.photos.attach(io: file, filename: 'monopoly.jpg', content_type: 'image/jpg')

##
user14 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user14.save!

boardgame14 = Boardgame.create!(
  name: 'Dany',
  description: "Try to guess what other players are planning and don't get caught while doing so!",
  category: 'Guesser',
  players: 4,
  price: 5,
  address: 'Place Charles de Gaulle, 75008 Paris',
  user: user14)
file = URI.open('https://www.vindjeu.eu/prd/wp-content/uploads/2019/04/2069-Dany-1.jpg')
boardgame14.photos.attach(io: file, filename: 'dany.jpg', content_type: 'image/jpg')

##
user15 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user15.save!

boardgame15 = Boardgame.create!(
  name: 'La route des épices',
  description: 'Decide on the resources you wish to gather among your journey and achieve glory and fame through business deals',
  category: 'Resources management',
  players: 4,
  price: 4,
  address: '16 Rue Chaptal, 75009 Paris',
  user: user15)
file = URI.open('https://escaleajeux.fr/r/r_epi_02.jpg')
boardgame15.photos.attach(io: file, filename: 'la_route_des_epices.jpg', content_type: 'image/jpg')

##
user16 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user16.save!

boardgame16 = Boardgame.create!(
  name: 'Cluedo',
  description: 'Find clues and traces of the murderer and reveal the impostor among the guests',
  category: 'Guesser',
  players: 3,
  price: 7,
  address: '2 Rue Charles Nodier, 75018 Paris',
  user: user16)
file = URI.open('https://cdn.akamai.steamstatic.com/steam/apps/794800/capsule_616x353.jpg?t=1610536248')
boardgame16.photos.attach(io: file, filename: 'cluedo.jpg', content_type: 'image/jpg')

##
user17 = User.new(
  username: Faker::Internet.username,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 123456
  )
user17.save!

boardgame17 = Boardgame.create!(
  name: 'Puissance 4',
  description: 'Get four of your coins in line first and humiliate your opponent',
  category: 'Strategy',
  players: 2,
  price: 4,
  address: '152 Boulevard de la Villette, 75019 Paris',
  user: user17)
file = URI.open('https://www.espritjeu.com/upload/image/puissance-4-p-image-71452-grande.jpg')
boardgame17.photos.attach(io: file, filename: 'puissance_quatro.jpg', content_type: 'image/jpg')

# bookings see

Booking.create!(
  start_at: DateTime.strptime("01/01/2021 12:00", "%m/%d/%Y %H:%M"),
  end_at: DateTime.strptime("01/31/2021 12:00", "%m/%d/%Y %H:%M"),
  user: user1,
  boardgame: boardgame17
  )

# ###

Booking.create!(
  start_at: Faker::Date.between(from: 10.days.ago, to: Date.today),
  end_at: DateTime.strptime("02/27/2021 17:00", "%m/%d/%Y %H:%M"),
  user: user2,
  boardgame: boardgame16
  )

# ###

Booking.create!(
  start_at: Faker::Date.between(from: 10.days.ago, to: Date.today),
  end_at: DateTime.strptime("03/02/2021 14:00", "%m/%d/%Y %H:%M"),
  user: user3,
  boardgame: boardgame3
  )

