Rails.application.routes.draw do

  root 'home#index'

  resources :articles

  get "/" => "home#index"

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  devise_for :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
