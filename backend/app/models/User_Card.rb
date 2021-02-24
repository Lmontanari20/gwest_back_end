class UserCard < ApplicationRecord
    belongs_to :user
    belongs_to :card
    has_secure_password
end