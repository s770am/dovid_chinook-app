Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tracks#index"
  get "/tracks",  to: 'tracks#index'
  get "/search", to: 'tracks#search', :as =>  "search_page"
end
