Rails.application.routes.draw do
  root to: 'homes#show', via: :get
  devise_for :users

  resource :dashboard, only: [:show] # specify "only" to keep rake routes clean
  resources :users, only: [:index, :show] do
    post 'follow' => 'following_relationships#create'
    delete 'follow' => 'following_relationships#destroy'
  end

  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resources :hashtags, only: [:show]
end
