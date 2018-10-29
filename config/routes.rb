Rails.application.routes.draw do

  devise_for :users

  # Vue de composant
  get "/components", to: 'cities#components', as: :components

  #racine de l'app
  root to: 'cities#home', as: :root

  post '/search', to: 'cities#search', as: :search_city # redirection avec l'id
  get '/explications/:id', to: 'cities#explications', as: :explications # Avec id de la ville

  post '/city', to: 'itineraires#search', as: :post_city # Crée l'itinéraire avec l'id de la ville --> redirige avec id itinéraire
  get '/vos-monuments/:id', to: 'itineraires#choice', as: :choice

  #affichage du recap
  get '/synthese/:id', to: 'itineraires#recap', as: :recap # avec id itinéraire

  #affichage de l'itinéraire
  get '/itineraire/:id', to: 'itineraires#show', as: :itinary # avec id itinéraire

end
