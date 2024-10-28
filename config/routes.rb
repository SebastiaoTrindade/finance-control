Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  # Session Login
  root 'sessions#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]

  # Session Dashboard
  #root 'dashboard#index'
  get 'dashboard', to:'dashboard#index'
  
end
