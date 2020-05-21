Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #list of games
  #get 'games', to: 'games#index'

  #list a game
  #get 'games/:id', to: 'games#show'
  
  #shorthand for all controller actions from games
  resources :games

  #list of companies
  #get 'companies', to: 'companies#index'

  #list a company
  #get 'companies/:id', to: 'companies#show'

  resources :companies
end