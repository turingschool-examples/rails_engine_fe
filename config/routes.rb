Rails.application.routes.draw do
  resources :merchants, only: [:index, :show]
  resources :items, only: [:show]
  namespace :merchants do
    get ':id/items', to: 'items#index'
  end
end
