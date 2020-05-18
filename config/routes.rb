Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pins#index'

  get '/usernames' => 'usernames#index', as: 'customers'
  # get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/usernames' => 'usernames#create'
  get '/usernames/:id' => 'usernames#show', as: 'username'

  get '/pins/new' => 'pins#new', as: 'new_pin'
  post '/pins' => 'pins#create'
  get '/pins/:id' => 'pins#show' , as: 'pin'

end
