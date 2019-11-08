Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_scope :user do get "/users/sign_in" => "devise/sessions#new" end

  root 'users#root'
end
