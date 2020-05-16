Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pins#index'
  get '/pins/new' => 'pins#new', as: 'new_pin'
  post '/pins' => 'pins#create'
  get '/pins/:id' => 'pins#show' , as: 'pin'
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'
  patch '/pins/:id' => 'pins#update'
  delete '/pins/:id' => 'pins#destroy'

    get '/pins/:id/comments' => 'comments#index', as: 'comments'
    get '/pins/:id/comments/new' => 'comments#new', as:'new_comment'
    post '/pins/:id/comments' => 'comments#create'
     get '/comments/:id' => 'comments#show' , as: 'comment'
    get '/comments/:id/edit' => 'comments#edit', as: 'edit_comment'
    patch '/comments/:id' => 'comments#update'
    delete '/comments/:id' => 'comments#destroy'

get '/dashboards' => 'dashboards#index', as: 'dashboards'



  get '/boards' => 'boards#index', as: 'boards'
  get '/boards/new' => 'boards#new', as: 'new_board'
  post '/boards' => 'boards#create'
  get '/boards/:id' => 'boards#show' , as: 'board'
  get '/boards/:id/edit' => 'boards#edit', as: 'edit_board'
  patch '/boards/:id' => 'boards#update'
  delete '/boards/:id' => 'boards#destroy'

  get '/tags' => 'tags#index', as: 'tags'
  get '/tags/new' => 'tags#new', as: 'new_tag'
  post '/tags' => 'tags#create'
  get '/tags/:name' => 'tags#show' , as: 'tag'


get '/others' => 'others#index', as: 'others'


  get '/followees' => 'followees#index', as: 'followees'
  get '/followees/:id/new' => 'followees#new', as: 'new_followee'
  post '/followees/:id' => 'followees#create'
  get '/followees/:id' => 'followees#show', as: 'followee'
      delete '/followees/:id' => 'followees#destroy'


  get '/boardfollowees' => 'boardfollowees#index', as: 'boardfollowees'
  get '/boardfollowees/:id/new' => 'boardfollowees#new', as: 'new_boardfollowee'
  post '/boardfollowees/:id' => 'boardfollowees#create'
  get '/boardfollowees/:id' => 'boardfollowees#show', as: 'boardfollowee'
      delete '/boardfollowees/:id' => 'boardfollowees#destroy'
end