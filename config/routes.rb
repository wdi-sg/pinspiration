Rails.application.routes.draw do

  root 'pins#index'
  devise_for :users
  resources :pins do
    resources :comments
  end
end