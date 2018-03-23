Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'pokemons/:id', to: "pokemons#capture", as: "capture"
  patch 'trainer/:id', to: "pokemons#damage", as: "damage"
  get '/a_new_Pokemon', to: "pokemons#new", as: "new_pokemon"
  post '/create_a_Pokemon', to: "pokemons#create", as: "create_pokemon"

end
