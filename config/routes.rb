Rails.application.routes.draw do
  devise_for :users
  get "/" => "homes#top"
  get "logout" => "users#logout"
  get "login" => "users#login_form"  
  post "login" => "users#login"
  resources :users
end
