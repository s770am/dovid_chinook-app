Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/contacts' => "contacts#index"
  # get '/contacts/new' => "contacts#new"
  # get '/contacts/:id' => "contacts#show"

  # post '/contacts' => "contacts#create"

  # get '/contacts/:id/edit' => 'contacts#edit'
  # patch '/contacts/:id' => 'contacts#update' , as: "contact"

  # delete '/contacts/:id' => 'contacts#destroy'

  root 'contacts#index'

  resources :contacts
  
end
