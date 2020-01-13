Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#index'
  resources :homes, only: [:index, :show]

  resources :movies, only: [:new, :create]
  
  get 'getstarted', to: 'homes#getstarted'


end
