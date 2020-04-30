Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create, :destroy] do
    resources :comments, only: [:create, :destroy]
  end
  resources :likes, only: [:create, :destroy]
end
