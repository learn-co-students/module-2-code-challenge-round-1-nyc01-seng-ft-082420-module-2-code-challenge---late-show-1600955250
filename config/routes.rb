Rails.application.routes.draw do
  resources :appearances, only: [:new, :create]
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
end
