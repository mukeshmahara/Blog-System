Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to:'blog#index'


  resources :blog
  resources :user
  get "/user/profile", to:"user#index"
  # resources :login
  get "/logout", to: "login#logout"
  get "/login", to: "login#index"
  post "/login", to: "login#check_credentials"
  # namespace :user do
  #   resources :blog
  # end

  resources :profile

  resources :register
end
