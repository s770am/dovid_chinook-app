Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "photos#index"
  get "/home" => "home#welcome" , as: "home_page"
  get "/about_us" => "home#about", as: "about"

  
  # resources :photos, only: [:index, :show]
  resources :photos, except: [:destroy]
end
