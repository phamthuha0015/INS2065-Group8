require 'sidekiq/web'

Rails.application.routes.draw do
  resources :authors
  resources :genres
  resources :publishers
  resources :notes
  resources :customers
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "notes#index"

  resources :roles
end
