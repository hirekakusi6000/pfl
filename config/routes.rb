Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  get "/" => "homes#top"
  post "links/:id/update" => "links#update"  
  delete "/links/:id" => "links#destroy"
  post "twitters/:id/update" => "twitters#update"  
  delete "/twitters/:id" => "twitters#destroy"
  resources :users, only: [:index, :show, :edit, :update]
  resources :links
  resources :twitters
end
