Rails.application.routes.draw do
  devise_for :users
  root to: 'spaces#index'
  resources :spaces
  get "spaces/photos", to: "spaces#photos"
  post "spaces/photos", to: "spaces#photos"
  get "spaces/description", to: "spaces#description"
  post "spaces/description", to: "spaces#description"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
