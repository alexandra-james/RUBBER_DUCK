Rails.application.routes.draw do
  devise_for :users

  resources :ducks do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]

  # Defines the root path route ("/")
  root to: "pages#home"
  # root to: "ducks#index"
end
