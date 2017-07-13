Rails.application.routes.draw do
  resources :users, only: [:create, :destroy, :index, :show, :update]
  # get 'users/:id' => 'users#show'
  # post 'users/' => 'users#create'
  # get 'users/:name' => 'users#show'
  resources :artworks, only: [:create, :destroy, :index, :show, :update]
end
