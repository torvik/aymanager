Rails.application.routes.draw do
   resources :improvements
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

  root to: 'home#index'
end
