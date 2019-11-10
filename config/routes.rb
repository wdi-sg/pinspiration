Rails.application.routes.draw do
  root 'pins#index'
  devise_for :users
  resources :pins do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end