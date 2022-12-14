# frozen_string_literal: true

Rails.application.routes.draw do
  resources :merchants, only: %i[index show]
  resources :items, only: %i[index show]
end
