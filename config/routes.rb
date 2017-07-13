Rails.application.routes.draw do
  resources :users, only: [:create, :destroy, :index, :show, :update] do
    resources :artworks, only: [:index]
  end

  # get 'users/:id' => 'users#show'
  # post 'users/' => 'users#create'
  # get 'users/:name' => 'users#show'
  resources :artworks, only: [:create, :destroy, :show, :update]
  resources :artwork_shares, only: [:create, :destroy]
end
