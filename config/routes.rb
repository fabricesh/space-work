Rails.application.routes.draw do
  get 'users/dashboard'
  devise_for :users

  resources :users
  get "/dashboard", to: "users#dashboard"

  root to: 'pages#home'

  resources :spaces do
    resources :reservations, only: [:new, :create]
  end

  post "spaces/photos", to: "spaces#photos"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    "spaces/new",      to: "spacess#new"
  get    "spaces/:id",      to: "spaces#show"
end
