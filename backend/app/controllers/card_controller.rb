class CardController < ApplicationController 
    def index 
        user = User.find(params[:id])
        render json: user.cards
    end

    def update 
        user = User.find(params[:user_id])
        card = User.cards.find(params[:card_id])
        indeck = !card.indeck
        card.update(indeck: indeck)
        render json: card
    end
end