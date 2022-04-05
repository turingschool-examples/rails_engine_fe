Rails.application.routes.draw do
  resources :merchants, only: %i[index show] do
    resources :items, only: %i[index]
  end
end
