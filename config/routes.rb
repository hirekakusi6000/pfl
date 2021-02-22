Rails.application.routes.draw do
  get 'links/index'
  get 'links/show'
  get 'links/new'
  get 'links/create'
  get 'links/edit'
  get 'links/update'
  get 'links/destroy'
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  get "/" => "homes#top"
  resources :users, only: [:index, :show, :edit, :update]
  resources :links
end
