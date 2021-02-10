Rails.application.routes.draw do
  devise_for :users
  get "/" => "homes#top"
  resources :users
end