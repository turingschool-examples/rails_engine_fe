Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :merchants, only: [:index, :show]
    # resources :items, controller: 'merchants', only: [:index]
  get 'merchants/:id/items', to: 'merchants#show'

end
