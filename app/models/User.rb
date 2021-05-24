class User < ApplicationRecord 
    has_many :battles
    has_many :user_cards
    has_many :cards, through: :user_cards
    has_secure_password
end