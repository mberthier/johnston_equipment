Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "inventory", to: "pages#inventory"
  get "product", to: "pages#product"

  resources :items, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :sub_categories, only: [:index, :show]
end
