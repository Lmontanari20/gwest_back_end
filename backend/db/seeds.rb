require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Battle.destroy_all()
User.destroy_all()
Card.destroy_all()
UserCard.destroy_all()

user = User.create(username: 'testSeed', password: '123')

Battle.create(ai_name: Faker::FunnyName.two_word_name, win: true, round1: "13-12", round2: "16-10", round3: nil, user_id: user.id)
Battle.create(ai_name: Faker::FunnyName.two_word_name, win: false, round1: "13-12", round2: "9-10", round3: "11-22", user_id: user.id)
Battle.create(ai_name: Faker::FunnyName.two_word_name, win: true, round1: "13-12", round2: "20-10", round3: nil, user_id: user.id)
Battle.create(ai_name: Faker::FunnyName.two_word_name, win: false, round1: "11-12", round2: "6-14", round3: nil, user_id: user.id)

c1 = Card.create(name: "Gattling Gun", attack: 5, cardClass: "siege", special: "")
c2 = Card.create(name: "Man With No Name", attack: 4, cardClass: "melee", special: "")
c3 = Card.create(name: "Ringo Kid", attack: 3, cardClass: "siege", special: "")
c4 = Card.create(name: "Pistol Pete", attack: 4, cardClass: "ranged", special: "")
c5 = Card.create(name: "Buffalo Bill", attack: 3, cardClass: "ranged", special: "")
c6 = Card.create(name: "Billy The Kid", attack: 3, cardClass: "siege", special: "")
c7 = Card.create(name: "Butch Cassidy", attack: 3, cardClass: "melee", special: "")
c8 = Card.create(name: "Quick Draw McGraw", attack: 3, cardClass: "ranged", special: "")
c9 = Card.create(name: "Bonnie & Clyde", attack: 5, cardClass: "ranged", special: "")
c10 = Card.create(name: "Dolores Abernathy", attack: 10, cardClass: "siege", special: "")
c11 = Card.create(name: "Calamity Jane", attack: 5, cardClass: "siege", special: "")
c12 = Card.create(name: "Pony", attack: 1, cardClass: "melee", special: "")
c13 = Card.create(name: "Stallion", attack: 3, cardClass: "ranged", special: "")
c14 = Card.create(name: "Donkey", attack: 2, cardClass: "melee", special: "")
c15 = Card.create(name: "Bow & Arrow", attack: 1, cardClass: "melee", special: "")
c16 = Card.create(name: "Rifle", attack: 3, cardClass: "siege", special: "")
c17 = Card.create(name: "Revolver", attack: 2, cardClass: "range", special: "")
c18 = Card.create(name: "Dual Revolvers", attack: 4, cardClass: "siege", special: "")
c19 = Card.create(name: "Baba Looey", attack: 2, cardClass: "melee", special: "")
c20 = Card.create(name: "Speedy Gonzales", attack: 4, cardClass: "melee", special: "")

UserCard.create(user_id: user.id, card_id: c1.id, indeck: true )
UserCard.create(user_id: user.id, card_id: c2.id, indeck: true )
UserCard.create(user_id: user.id, card_id: c3.id, indeck: true )
UserCard.create(user_id: user.id, card_id: c4.id, indeck: true )
UserCard.create(user_id: user.id, card_id: c5.id, indeck: false )
UserCard.create(user_id: user.id, card_id: c6.id, indeck: false )
UserCard.create(user_id: user.id, card_id: c7.id, indeck: false )
UserCard.create(user_id: user.id, card_id: c8.id, indeck: false )
UserCard.create(user_id: user.id, card_id: c9.id, indeck: false )
UserCard.create(user_id: user.id, card_id: c11.id, indeck: false )
UserCard.create(user_id: user.id, card_id: c12.id, indeck: false )
UserCard.create(user_id: user.id, card_id: c14.id, indeck: false )
UserCard.create(user_id: user.id, card_id: c10.id, indeck: false )
