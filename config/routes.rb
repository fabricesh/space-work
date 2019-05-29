Rails.application.routes.draw do
  get 'users/dashboard'
  devise_for :users
  root to: 'pages#home'
  # get "spaces/new", to: "spaces#new"
  post "spaces/photos", to: "spaces#create_space"
  get "spaces/:id/photos", to: "spaces#photos", as: "add_photos"
  patch "spaces/:id/description", to: "spaces#update_photos"
  get "spaces/:id/description", to: "spaces#description", as: "add_description"
  patch "spaces/:id/parameters", to: "spaces#update_description"
  get "spaces/:id/parameters", to: "spaces#parameters", as: "add_parameters"
  patch "spaces/:id/", to: "spaces#update_parameters"

  get "spaces/:id/setonline", to: "spaces#online", as: "online"
  get "spaces/:id/setoffline", to: "spaces#offline", as: "offline"


  resources :users
  get "/dashboard", to: "users#dashboard"
  get "/reservations", to: "users#reservations"
  get "/reservations/mes_demandes", to: "reservations#mes_demandes"
  #resources :reservations, only: [:destroy]

  root to: 'pages#home'
  post "spaces/:id/", to: "reservations#preview"
  post "reservation/:id/", to: "reservations#create"
  # get "spaces/:id/reviews", to: "reviews#new"
  resources :spaces do
    resources :reservations, only: :create
  end
  resources :spaces do
    resources :reviews, only: [:new, :create]
  end
  # get "reservation/:id/", to: "reservations#new", as: "new_reservation"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    "spaces/:id",      to: "spaces#show"

end
