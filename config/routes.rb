Rails.application.routes.draw do
  
  post '/apearance', :to=>"apearances#create", :as=>"apearances"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :new, :show]
  resources :episodes, only: [:index, :show]
  resources :apearances, only: [:new, :show]

end
