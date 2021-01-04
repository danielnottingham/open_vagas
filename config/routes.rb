Rails.application.routes.draw do
  resources :companies, only: %i[new edit update create]
  resources :positions
  resources :applicants, only: %i[index new create]
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
