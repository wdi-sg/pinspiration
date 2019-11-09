Rails.application.routes.draw do
  devise_for :users
  resources :users


  root 'pins#index'
  resources :pins






end