Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/signup', to: 'user#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'auth#show'

  get '/battle/:id', to: 'battle#index'
  patch '/battle/:battle_id', to: 'battle#update'
  get '/battle/new/:id', to: 'battle#create'
  
  get '/card/:id', to: 'user_card#index'
  patch '/card/:user_id/:card_id', to: 'user_card#update'
  get '/card/ai/deck', to: 'card#aiDeck'

end
