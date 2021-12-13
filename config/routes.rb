Rails.application.routes.draw do
  get '/merchants', to: 'merchants#index'
  get '/merchant/:id', to: 'merchants#show'
end
