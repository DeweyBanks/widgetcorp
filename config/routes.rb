Rails.application.routes.draw do
  root 'welcome#index'
  resources :widgets
  resources :users
  resources :user_sessions, only: [:new, :create]
  post "/notify" => "notifications#create"
  get "/notify/new" => "notifications#new"
  get "/login" => "user_sessions#new", as: :login
  delete "/logout" => "user_sessions#destroy", as: :logout
end
