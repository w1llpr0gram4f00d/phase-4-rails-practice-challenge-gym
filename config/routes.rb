Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :clients, only: [:show, :index]
  resources :gyms, only: [:show, :index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
