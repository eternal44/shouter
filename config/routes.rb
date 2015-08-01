Rails.application.routes.draw do
  root to: 'homes#show', via: :get
  devise_for :users

  resource :dashboard, only: [:show] # specify "only" to keep rake routes clean
  resources :shouts, only: [:create, :show]
  resources :users, only: [:show]
end
