Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boardgames do
  	resources :bookings, only: [:create]
  end

  resources :bookings, only: [:destroy]
end
