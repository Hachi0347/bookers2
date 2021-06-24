Rails.application.routes.draw do
  root to: 'home#top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :update]
  resources :home, only: [:index]
  resources :post_images, only: [:new, :create, :show, :destroy]
  get 'home/about', to: 'home#index', as: 'index_home'
end