Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :messages
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
