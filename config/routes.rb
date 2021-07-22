Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to:'blog#index'

  resources :blog, :user, :profile
  
  resources :blog do
    resources :comment, only: [:create, :destroy,:edit]
  end

  post "/blog/comments", to:"blog#create_comment"
  get "/user/profile", to: "user#index"
  
  get "/logout", to: "login#logout"
  get "/login", to: "login#index"
  post "/login", to: "login#check_credentials"
  # post "/blog", to: "blog#create_comment"




  get "/search", to: "blog#blogSearch"
  
end
