Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :merchants
  resources :items
end
