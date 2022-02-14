Rails.application.routes.draw do
  get '/', to: 'home#index'
  resources :merchants, only: [:index, :show]
  resources :items, only: [:index, :show]
end
