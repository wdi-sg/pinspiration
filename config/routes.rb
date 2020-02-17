Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :pins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'dashboard#index'
  get '/dashboard/' => 'dashboard#index'
end
