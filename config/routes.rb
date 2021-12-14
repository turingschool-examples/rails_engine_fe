Rails.application.routes.draw do
  get '/merchants', to: 'merchants#index'
  get '/merchants/:id', to: 'merchants#show'
  get '/items/:id', to: 'items#show'
end
