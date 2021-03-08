class UserController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        user = User.create(username: params[:username], password: params[:password])
        
        if user.valid? 
            my_token = encode_token({user_id: user.id})
            cards = []
            while(cards.length < 12)
                card = Card.all.sample 
                if !cards.include?(card) 
                    UserCard.create(user_id: user.id, card_id: card.id, indeck: false)
                    cards << card
                end
            end
            render json: {id: user.id, username: user.username, token: my_token}
        else 
            render json: {error:'failed to create a user'}
        end
    end

    private 
    def user_params
        params.require(:user).permit(:username, :password)
    end 
end