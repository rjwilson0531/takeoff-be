Rails.application.routes.draw do
  resources :comments
  resources :posts, only: [:index, :show, :create, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create, :destroy]
end
