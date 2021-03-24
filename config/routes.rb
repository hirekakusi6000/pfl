Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks',# このpathを通して外部API認証が行われる。
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  
  get "/" => "homes#top"
  get "/homes/about" => "homes#about"
  get "/homes/service" => "homes#service"
  get "/homes/privacy" => "homes#privacy"
  devise_scope :user do
  post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  post "links/:id/update" => "links#update"  
  delete "/links/:id" => "links#destroy"
  post "websites/:id/update" => "websites#update"  
  delete "/websites/:id" => "websites#destroy"
  post "subprofiles/:id/update" => "subprofiles#update"
  delete "/subprofiles/:id" => "subprofiles#destroy"
  resources :users, only: [:index, :show, :edit, :update]
  resources :links
  resources :websites
  resources :subprofiles
end
