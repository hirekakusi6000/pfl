Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  root  "homes#top"
  post "links/:id/update" => "links#update"  
  delete "/links/:id" => "links#destroy"
  post "twitters/:id/update" => "twitters#update"  
  delete "/twitters/:id" => "twitters#destroy"
  post "instagrams/:id/update" => "instagrams#update"  
  delete "/instagrams/:id" => "instagrams#destroy"
  post "facebooks/:id/update" => "facebooks#update"  
  delete "/facebooks/:id" => "facebooks#destroy"
  post "youtubes/:id/update" => "youtubes#update"  
  delete "/youtubes/:id" => "youtubes#destroy"
  post "tiktoks/:id/update" => "tiktoks#update"  
  delete "/tiktoks/:id" => "tiktoks#destroy"
  resources :users, only: [:index, :show, :edit, :update]
  resources :links
  resources :twitters
  resources :instagrams
  resources :facebooks
  resources :youtubes
  resources :tiktoks
end
