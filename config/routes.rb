Rails.application.routes.draw do
  resources :pins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboards#redirect'
  get '/dashboard' => 'dashboards#index', as: 'dashboards'
  post '/pins/:id' => 'comments#create', as: 'comment'
end
