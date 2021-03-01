class UserCardSerializer < ActiveModel::Serializer
  attributes :id, :user, :card, :indeck
end
