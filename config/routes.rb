Rails.application.routes.draw do
  devise_for :users

  resources :improvements do
    resources :tasks
  end 

  resources :responsibles
  resources :requesters
  resources :areas
  resources :providers
  resources :statuses
  resources :directors
  resources :priorities
  resources :types
  resources :systems
  resources :segments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticated :user do
    root to: 'home#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')


  #root to: 'home#index'
  
end
