Rails.application.routes.draw do
  get 'users/dashboard'
  devise_for :users
  root to: 'spaces#index'
  resources :spaces
  resources :users
  get "/dashboard", to: "users#dashboard"
  post "spaces/photos", to: "spaces#photos"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
