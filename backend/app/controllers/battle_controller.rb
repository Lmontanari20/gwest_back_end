require 'faker'

class BattleController < ApplicationController 
    skip_before_action :authorized
    def create 
        name = Faker::FunnyName.two_word_name
        battle = Battle.create(ai_name: name, win: false, round1: nil, round2: nil, round3: nil, user_id: params[:id])
        render json: battle
    end

    def update 
        battle = Battle.find(params[:battle_id])
        battle.update(win: params[:win], round1: params[:round1], round2: params[:round2], round3: params[:round3])
        render json: battle
    end

    def index 
        user = User.find(params[:id])
        render json: user.battles
    end
end