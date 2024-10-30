Rails.application.routes.draw do
  # Session User
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  
  # Session Login
  root 'sessions#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy' 

  # Session Dashboard
  #root 'dashboard#index'
  get 'dashboard', to:'dashboard#index'

  # Category
  resources :categories

  
end
