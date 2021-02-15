Rails.application.routes.draw do
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  get "/" => "homes#top"
  resources :users, only: [:index, :show, :edit, :update]
end
