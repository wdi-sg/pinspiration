Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pins#index'
  get '/pins' => 'pins#index', as: 'pins'
  get '/pins/new' => 'pins#new' , as: 'new_pin'
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'
  get '/pins/:id' => 'pins#show', as: 'pin'
  post '/pins' => 'pins#create'
  patch '/pins/:id' => 'pins#update'
  delete '/pins/:id' => 'pins#destroy'

  get 'dashboard/pins' => 'pins#created', as: 'user_pin'
  get '/dashboard/comments' => 'comments#index', as: 'comments'
  get '/comments/new' => 'comments#new' , as: 'new_comment'
  get '/comments/:id' => 'comments#show', as: 'comment'
  post '/dashboard/comments' => 'comments#create'
  patch '/comments/:id' => 'comments#update'
  delete '/comments/:id' => 'comments#destroy'

  get '/boards' => 'boards#index', as: 'boards'
  get '/boards/new' => 'boards#new' , as: 'new_board'
  get '/boards/:id/edit' => 'boards#edit', as: 'edit_board'
  get '/boards/:id' => 'boards#show', as: 'board'
  post '/boards' => 'boards#create'
  patch '/boards/:id' => 'boards#update'
  delete '/boards/:id' => 'boards#destroy'

end