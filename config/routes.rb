Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"
  resources :posts, only: [:index, :show, :create, :destroy] do
    resources :comments, only: [:index, :create, :destroy]
  end
  resources :likes, only: [:create, :destroy]
end
