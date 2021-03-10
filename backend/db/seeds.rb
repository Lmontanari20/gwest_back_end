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

c1 = Card.create(name: "Gattling Gun", attack: 5, cardClass: "siege", special: "", url: "./../assets/cards/Gattling_Gun_Card.png")
c2 = Card.create(name: "Man With No Name", attack: 4, cardClass: "melee", special: "", url: "./../assets/cards/No_Name_Card.png")
c3 = Card.create(name: "Ringo Kid", attack: 3, cardClass: "siege", special: "", url: "./../assets/cards/Ringo_Kid_Card.png")
c4 = Card.create(name: "Pistol Pete", attack: 4, cardClass: "ranged", special: "", url: "./../assets/cards/Pistol_Pete_Card.png")
c5 = Card.create(name: "Buffalo Bill", attack: 3, cardClass: "ranged", special: "", url: "./../assets/cards/Bufflo_Bill_Card.png")
c6 = Card.create(name: "Billy The Kid", attack: 3, cardClass: "siege", special: "", url: "./../assets/cards/Billy_The_Kid_Card.png")
c7 = Card.create(name: "Butch Cassidy", attack: 3, cardClass: "melee", special: "", url: "./../assets/cards/Butch_Cassidy_Card.png")
c8 = Card.create(name: "Quick Draw McGraw", attack: 3, cardClass: "ranged", special: "", url: "./../assets/cards/quick_Draw_McGraw_Card.png")
c9 = Card.create(name: "Bonnie & Clyde", attack: 5, cardClass: "ranged", special: "", url: "./../assets/cards/Bonnie_Clyde_Card.png")
c10 = Card.create(name: "Dolores Abernathy", attack: 10, cardClass: "siege", special: "", url: "./../assets/cards/Dolores_Abernathy_Card.png")
c11 = Card.create(name: "Calamity Jane", attack: 5, cardClass: "siege", special: "", url: "./../assets/cards/Calamity_Jane_Card.png")
c12 = Card.create(name: "Pony", attack: 1, cardClass: "melee", special: "", url: "./../assets/cards/Pony_Card.png")
c13 = Card.create(name: "Stallion", attack: 3, cardClass: "ranged", special: "", url: "./../assets/cards/Stallion_Card.png")
c14 = Card.create(name: "Donkey", attack: 2, cardClass: "melee", special: "", url: "./../assets/cards/Donkey_Card.png")
c15 = Card.create(name: "Bow & Arrow", attack: 1, cardClass: "melee", special: "", url: "./../assets/cards/Bow_Arrow_Card.png")
c16 = Card.create(name: "Rifle", attack: 3, cardClass: "siege", special: "", url: "./../assets/cards/Rifle_Card.png")
c17 = Card.create(name: "Revolver", attack: 3, cardClass: "ranged", special: "", url: "./../assets/cards/Revolver_Card.png")
c18 = Card.create(name: "Dual Revolvers", attack: 4, cardClass: "siege", special: "", url: "./../assets/cards/Dual_Revolvers.png")
c19 = Card.create(name: "Baba Looey", attack: 2, cardClass: "melee", special: "", url: "./../assets/cards/Baba_Looey_Card.png")
c20 = Card.create(name: "Speedy Gonzales", attack: 4, cardClass: "melee", special: "", url: "./../assets/cards/Speedy.png")

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
