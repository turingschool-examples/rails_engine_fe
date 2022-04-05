Rails.application.routes.draw do
  resources :merchants, only: [:index, :show]
    # resources :items, controller: 'merchants', only: [:index]
  get 'merchants/:id/items', to: 'merchants#show'

end
