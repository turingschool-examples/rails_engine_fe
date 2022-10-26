# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :merchants, only: %i[index show]
  resources :items, only: %i[index show]
end
