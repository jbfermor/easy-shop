Rails.application.routes.draw do
  resources :purchase_lines
  resources :purchases
  resources :products
  resources :suppliers
  resources :bios
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"
end
