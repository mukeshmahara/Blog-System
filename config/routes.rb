Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to:'blog#index'


  resources :blog
  resources :user
  resources :profile

  resources :register
  
  get "/user/profile", to:"user#index"
  
  get "/logout", to: "login#logout"
  get "/login", to: "login#index"
  post "/login", to: "login#check_credentials"

  
end
