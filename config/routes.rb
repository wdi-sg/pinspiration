Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pins#index', as: 'home'
  get '/pins' => 'pins#index', as: 'pins'
  get '/pins/new' => 'pins#new', as: 'new_pin'
  post '/pins' => 'pins#create'
  get '/pins/:id' => 'pins#show' , as: 'pin'
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'
  patch '/pins/:id' => 'pipns#update'
  delete '/pins/:id' => 'pins#destroy'
end
