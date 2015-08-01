Rails.application.routes.draw do
  root to: 'homes#show', via: :get
  devise_for :users

  resource :dashboard, only: [:show] # specify "only" to keep rake routes clean
  resources :users, only: [:show]
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
end
