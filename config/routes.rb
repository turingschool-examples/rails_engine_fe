Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :merchants, only: [:index, :show]
  get "/merchants/:merchant_id/items/:item_id", to: "items#show"
  resources :items, only: [:index, :show]
end
