Rails.application.routes.draw do
  get 'users/dashboard'
  devise_for :users
  root to: 'pages#home'
  get "spaces/new", to: "spaces#new"
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

  root to: 'pages#home'
  post "reservation/:id/", to: "spaces#create_reservation"
  get "reservation/:id/", to: "reservations#new", as: "new_reservation"
  resources :spaces do
    resources :reservations, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    "spaces/:id",      to: "spaces#show"

end
