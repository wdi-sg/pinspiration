Rails.application.routes.draw do
  root 'pins#index'
  devise_for :users
  resources :pins
  post '/pinit/:id' => 'pins#pinit', as: 'pin_it'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
