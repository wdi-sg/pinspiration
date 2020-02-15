Rails.application.routes.draw do
  resources :pins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pins#index"
  get "/dashboard" => "pins#dashboard"

  get "/pins/:id/comments/new" => "comments#new", as: "new_comment"
  post "pins/:id/comments/new" => "comments#create", as: "comments"
end
