Rails.application.routes.draw do
  resources :pins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pins#index"
  get "/dashboard" => "pins#dashboard"

  get "/pins/:id/comments/new" => "comments#new", as: "new_comment"
  post "/pins/:id/comments/new" => "comments#create", as: "comments"
  get "/pins/:id/add" => "pins#add"
  post "/pins/:id/add" => "pins#add_to_board", as: "add_to_boards"

  get "/boards/new" => "boards#new", as: "new_board"
  post "/boards/new" => "boards#create", as: "boards"
  get "/boards/:id" => "boards#show", as: "board"
  get "/boards" => "boards#index"
  delete "/boards/:id" => "boards#destroy"
end
