Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pins#index'

  get '/' => 'pins#index'
  get '/pins/new' => 'pins#new', as: 'new_pin'
  get '/pins/:id' => 'pins#show', as: 'pin'
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'

  post '/pins' => 'pins#create'

  patch '/pins/:id' => 'pins#update'

  delete '/pins/:id' => 'pins#destroy'
end