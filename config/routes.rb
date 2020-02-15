Rails.application.routes.draw do

  resources :boards
  resources :comments
  resources :pins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'dashboard#index'
  get '/dashboard/' => 'dashboard#index'
end
