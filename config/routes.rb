Rails.application.routes.draw do
  # resources :merchants, only: [:index, :show]
  get '/merchants', to: 'merchants#index'
  get '/merchants/:merchant_id', to: 'merchants#show'
end
