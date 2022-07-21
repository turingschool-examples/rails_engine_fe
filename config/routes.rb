Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/merchants', to: 'merchants#index'
get '/merchant/:merch_id', to: 'merchants#show'
get '/merchant/:merch_id/items', to: 'merchant_items#index'
end
