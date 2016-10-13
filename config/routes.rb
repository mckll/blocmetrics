Rails.application.routes.draw do
  
  get 'welcome/index'

  devise_for :users
  resources :users, only: [:show]
  resources :apps

  root to: 'welcome#index'
end
