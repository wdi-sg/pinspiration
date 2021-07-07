Rails.application.routes.draw do
  resources :pins
  resources :boards
  devise_for :users

  root 'boards#index'
end