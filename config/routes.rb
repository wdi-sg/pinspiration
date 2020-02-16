Rails.application.routes.draw do
  devise_for :users
  resources :pins , :boards , :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pins#index'
  get '/dashboard' => 'pins#dashboard', as: 'dashboard'
end
