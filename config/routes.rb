Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  get '/dashboard' => "pins#dashboard", as: 'dashboard'
  post '/boards/:id/pins' => "boards#add_pins", as: 'board_pins'
  post '/pins/:id/boards' => "pins#add_to_board", as: 'pins_add_board'
  resources :pins do 
    resources :comments
  end

  resources :boards
  
  root 'welcome#index'
end
