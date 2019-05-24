Rails.application.routes.draw do
  devise_for :users
  root to: 'spaces#index'
<<<<<<< HEAD

  resources :spaces

  resources :user
=======
  resources :spaces
  post "spaces/photos", to: "spaces#photos"
>>>>>>> c5c1527c44b00df620b7e3d891f4700c2ac78d4c
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
