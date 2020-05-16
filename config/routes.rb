Rails.application.routes.draw do
  resources :pins
  resources :comments
  devise_for :users

  root "pins#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end