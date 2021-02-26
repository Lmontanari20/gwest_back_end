require 'faker'

class BattleController < ApplicationController 
    skip_before_action :authorized
    def create 
        name = Faker::FunnyName.two_word_name
        battle = Battle.create(ai_name: name, win: nil, round1: nil, round2: nil, round3: nil, user_id: params[:user_id])
        render json: battle
    end

    def update 
        battle = Battle.find(params[:id])
        battle.update(battle_params)
        render json: battle
    end

    def index 
        user = User.find(params[:id])
        render json: user.battles
    end
    
    private 
    def battle_params
        params.require(:battle).permit(:win, :round1, :round2, :round3)
    end 
end