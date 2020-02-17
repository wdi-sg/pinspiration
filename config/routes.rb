Rails.application.routes.draw do
  devise_for :users

  root 'pinss#index'
  get '/pins' => 'pins#index', as: 'pins'
  get '/pins/new' => 'pins#new', as: 'new_pin'
  post '/pins' => 'pins#create'

  #Important for sequence to be right!
  #Edit: shows form to edit
  #Insert the information into field for edit
  #Update the new information
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'
  get '/pins/:id' => 'pins#show' , as: 'pin'
  patch '/pins/:id' => 'pins#update'

end


