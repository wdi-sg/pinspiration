Rails.application.routes.draw do
  devise_for :users

  root 'pins#index'
  post '/pins' => 'pins#create'
  get '/pins/new' => 'pins#new', as: 'new_pin'
  get '/pins/:id' => 'pins#show', as: 'pin'
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'
  patch '/pins/:id' => 'pins#update'
  delete '/pins/:id' => 'pins#destroy'

  get '/comments/new' => 'comments#new', as: 'new_comment'
  post '/comments' => 'comments#create'
end