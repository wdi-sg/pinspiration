Rails.application.routes.draw do

  # what is the line of code below for?
  #devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# | Method Action | to:  URL | as: Variable |

  root 'pins#index'

  get '/pins', to: 'pins#show', as: 'pins'

  get '/pins/new', to: 'pins#new', as: 'pin_new'

  post '/pins', to: 'pins#create', as: 'pin_create'



end