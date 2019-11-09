Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_scope :user do get "/users/sign_in" => "devise/sessions#new" end

  root 'users#root'

  get '/pins' => 'pins#index', as: 'pins'
  get '/pins/new' => 'pins#new', as: 'new_pin'
  post '/pins' => 'pins#create'
  get '/pins/:id' => 'pins#show', as: 'pin'
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'
  patch '/pins/:id' => 'pins#update'
  delete '/pins/:id' => 'pins#destroy'
end
