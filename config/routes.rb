Rails.application.routes.draw do
  resources :comments
  resources :pins
  resources :boards

  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  get 'pins/index'
  get 'pins/show'
  get 'pins/new'
  get 'pins/create'
  get 'pins/edit'
  get 'pins/update'
  get 'pins/destroy'
  get 'boards/index'
  get 'boards/show'
  get 'boards/new'
  get 'boards/create'
  get 'boards/edit'
  get 'boards/update'
  get 'boards/destroy'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
