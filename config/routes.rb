Rails.application.routes.draw do
  devise_for :users
  root to: 'spaces#index'
  resources :spaces do
    resources :reservations
  end
  post "spaces/photos", to: "spaces#photos"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    "spaces/new",      to: "spacess#new"
  get    "spaces/:id",      to: "spaces#show"
end
