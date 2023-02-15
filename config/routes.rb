Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :merchants, only: %i[index show]

  resources :items, only: [:index, :show]
end
