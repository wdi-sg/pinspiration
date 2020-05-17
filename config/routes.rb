Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm

  post '/boards/:id/pins' => "boards#add_pins", as: 'board_pins'

  resources :pins do 

    resources :comments
  end

  resources :boards
  
  root 'welcome#index'
end
