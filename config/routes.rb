Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/merchants/find_all', to: 'search#merchants_search'

  resources :merchants, only: [:index, :show]

  resources :items, only: [:index, :show]
end
