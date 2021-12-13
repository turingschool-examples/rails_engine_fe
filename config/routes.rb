Rails.application.routes.draw do
  get '/merchants', to: 'merchants#index'
  get '/merchant/:id', to: 'merchants#show'
  get '/items', to: 'items#index'
  get '/item/:id', to: 'items#show'
end
