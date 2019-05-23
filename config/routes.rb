Rails.application.routes.draw do
  devise_for :users
  root to: 'spaces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    "users/:id",      to: "users#show"
end
