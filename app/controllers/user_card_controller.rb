class UserCardController < ApplicationController
    def index
        user = User.find(params[:id])
        render json: user.user_cards
    end

    def create
        card = Card.all.sample
        userCard = UserCard.create(user_id: params[:id], card_id: card.id, indeck: false)
        render json: userCard
    end

    def update 
        user = User.find(params[:user_id])
        # card = user.user_cards.find{ |uCard| uCard.card.id == params[:card_id]}
        # user_cards = user.user_cards
        # card = user_cards.find{|userCard| userCard.card.id == params[:card_id].to_i}
        card = UserCard.find(params[:card_id])
        indeck = !card.indeck
        card.update(indeck: indeck)
        render json: user.user_cards
    end
end