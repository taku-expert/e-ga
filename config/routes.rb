Rails.application.routes.draw do
  devise_for :users 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   
  resources :homes, only: [:index]
  resources :users, only: [:new, :create, :edit, :update]
  get '/mypage', to: "users#mypage"
  
  get 'getstarted', to: 'homes#getstarted'

  root to: 'homes#index'
end
