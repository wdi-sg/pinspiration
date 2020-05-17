Rails.application.routes.draw do
  resources :pins do
    resources :comments, only: [:new, :create]
  end

  resources :comments
  devise_for :users

  root "pins#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end