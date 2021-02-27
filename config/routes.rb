Rails.application.routes.draw do 
  get 'users/index'
  devise_for :companies, controllers: {
    sessions: 'companies/sessions',
    passwords: 'companies/passwords',
    registrations: 'companies/registrations'
  }
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root to: "jobs#index"
  resources :users, only: [:index]
  resources :companies, only: [:index]
  
end
