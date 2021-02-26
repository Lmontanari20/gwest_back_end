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

User.create(username: 'testSeed', password: '123')

Battle.create(ai_name: Faker::FunnyName.two_word_name, win: true, round1: "13-12", round2: "16-10", round3: nil, user_id: 1)
Battle.create(ai_name: Faker::FunnyName.two_word_name, win: false, round1: "13-12", round2: "9-10", round3: "11-22", user_id: 1)
Battle.create(ai_name: Faker::FunnyName.two_word_name, win: true, round1: "13-12", round2: "20-10", round3: nil, user_id: 1)
Battle.create(ai_name: Faker::FunnyName.two_word_name, win: false, round1: "11-12", round2: "6-14", round3: nil, user_id: 1)

Card.create(name: "Gattling Gun", attack: 5, cardClass: "siege", special: "", indeck: true )
Card.create(name: "Man With No Name", attack: 4, cardClass: "melee", special: "", indeck: true )
Card.create(name: "Ringo Kid", attack: 3, cardClass: "siege", special: "", indeck: true )
Card.create(name: "Pistol Pete", attack: 4, cardClass: "ranged", special: "", indeck: true )
Card.create(name: "Buffalo Bill", attack: 3, cardClass: "ranged", special: "", indeck: false )

UserCard.create(user_id: 1, card_id: 1)
UserCard.create(user_id: 1, card_id: 2)
UserCard.create(user_id: 1, card_id: 3)
UserCard.create(user_id: 1, card_id: 4)
UserCard.create(user_id: 1, card_id: 5)