Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :islands do
    resources :bookings, only: :new
  end
  resources :users, except: [ :index, :destroy ] do
    resources :bookings, only: [:create, :edit, :update ]
  end
  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end
end
