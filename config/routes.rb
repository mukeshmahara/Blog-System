Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to:'user#index'


  resources :blog
  resources :user
  # resources :login
  get "/logout", to: "login#logout"
  get "/login", to: "login#index"
  post "/login", to: "login#check_credentials"
  # namespace :user do
  #   resources :blog
  # end

end
