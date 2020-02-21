Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :moissonneuses do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
