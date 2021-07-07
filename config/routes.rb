Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pins#index'
  get '/pins' => 'pins#index', as: 'pins'
  get '/pins/new' => 'pins#new', as: 'new_pin'
  post '/pins' => 'pins#create'
  get '/pins/:id' => 'pins#show' , as: 'pin'
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'
  patch '/pins/:id' => 'pins#update'
  delete '/pins/:id' => 'pins#destroy'

  get '/comments' => 'comments#index', as: 'comments'
  get '/comments/new' => 'comments#new', as: 'new_comment'
  post '/comments' => 'comments#create'
  get '/comments/:id' => 'comments#show' , as: 'comment'
  get '/comments/:id/edit' => 'comments#edit', as: 'edit_comment'
  patch '/comments/:id' => 'comments#update'
  delete '/comments/:id' => 'comments#destroy'

  get '/boards' => 'boards#index', as: 'boards'
  get '/boards/new' => 'boards#new', as: 'new_board'
  post '/boards' => 'boards#create'
  get '/boards/:id' => 'boards#show' , as: 'board'
  get '/boards/:id/edit' => 'boards#edit', as: 'edit_board'
  patch '/boards/:id' => 'boards#update'
  delete '/boards/:id' => 'boards#destroy'


end