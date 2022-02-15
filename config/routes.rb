Rails.application.routes.draw do
  root 'merchants#find'
  resources :merchants, only: %i[index show]
  resources :items, only: %i[index show]
end
