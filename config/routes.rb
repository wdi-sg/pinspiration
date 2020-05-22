Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tags

  resources :pins do
    resources :comments
  end

  root 'pins#index'

  get '/dashboard/comments' => 'comments#commentsbyuser', as: 'comments_user'

  get '/dashboard/pins' => 'pins#pinsbyuser', as: 'pins_user'
end
