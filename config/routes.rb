Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  root 'users#index'

# Nested routes due to association
  resources :boards do
    resources :pins
  end

end