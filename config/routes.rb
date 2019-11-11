Rails.application.routes.draw do
  devise_for :users

  
  resources :pins
  resources :comments

  get '/pins/:pin_id/comments' => 'comments#index', as: 'pin_commentss'
  get '/pins/:pin_id/comments/new' => 'comments#create', as: 'new_pin_comment'
  post '/pins/:pin_id/comments' => 'comments#create'

  root to: 'pins#index'
end   
