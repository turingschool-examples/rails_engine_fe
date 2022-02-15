Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  post '/find_all', to: 'welcome#find_all'
  resources :merchants, only: [:index, :show]
  resources :items, only: [:show]
end
