Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/signup', to: 'user#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'auth#show'
end
