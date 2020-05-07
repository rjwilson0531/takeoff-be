Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create, :destroy] do
    resources :comments, only: [:index, :create, :destroy]
  end
  resources :likes, only: [:create, :destroy]
  post '/login', to: 'auth#create'
end
