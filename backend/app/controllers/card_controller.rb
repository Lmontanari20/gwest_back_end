class CardController < ApplicationController 
    
    def aiDeck 
        cards = []
        while(cards.length < 20)
            card = Card.all.sample
            if !cards.include?(card)
                cards << card
            end
        end
        render json: cards
    end
end