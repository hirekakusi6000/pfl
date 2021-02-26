Rails.application.routes.draw do
  get 'links/index'
  get 'links/show'
  get 'links/new'
  post 'links/create'
  post 'links/edit'
  post 'links/update'
  get 'links/destroy'
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  get "/" => "homes#top"
  post "links/:id/update" => "links#update"  
  delete "/links/:id" => "links#destroy"
  resources :users, only: [:index, :show, :edit, :update]
  resources :links
end
