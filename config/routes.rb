Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :merchants, only: [:index, :show]
  resources :items, only: [:show, :index]
  get '/', to: 'welcome#search'
  post '/merchants/results', to: 'merchants#results'
end
