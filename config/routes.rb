Rails.application.routes.draw do
  devise_for :users

  root 'pins#index'
  # get 'pins' => 'pins#index', as: 'pins'
  # get 'pins/new' => 'pins#new', as: 'new_pin'
  # post 'pins' => 'pins#create'
  # get '/pins/:id' => 'pins#show', as: 'pin'

  resources :pins do
    resources :comments
  end
end
