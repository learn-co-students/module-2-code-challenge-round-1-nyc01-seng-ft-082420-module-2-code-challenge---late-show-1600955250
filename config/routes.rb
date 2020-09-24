Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]
  get "/appearances", to: "appearances#index", as: "appearances"
  get "/appearances/new", to: "appearances#new", as: "new_appearances"
  post "/appearances", to: "appearances#create"
end
