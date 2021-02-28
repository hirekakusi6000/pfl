Rails.application.routes.draw do
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
