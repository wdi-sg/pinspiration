Rails.application.routes.draw do
  
  devise_for :users
  resources :pins 
  # do  
  #   resources :comments, :except => [:update , :destroy, :show]
  #   # resources :comments, :only => [:post]
  # end
  # resources :comments, :only => [:update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => redirect('/dashboard')

  get '/dashboard' => 'pins#index' , as: 'dashboard'

  # get '/pins/:pin_id/comments/new' => 'comments#create', as: 'new_pin_comment'
  # post '/pins/:pin_id/comments' => 'comments#create'
  # put '/pins/:pin_id/comments/:id' => 'comments#create'
  # delete '/pins/:pin_id/comments/:id' => 'comments#create'

end
