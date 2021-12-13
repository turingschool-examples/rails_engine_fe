Rails.application.routes.draw do
  get '/merchants', to: 'merchants#index'
  get '/merchants/:id', to: 'merchants#show'
  get '/items', to: 'items#index'
  get '/items/:id', to: 'items#show'
end
