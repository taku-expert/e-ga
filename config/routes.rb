Rails.application.routes.draw do
  devise_for :users 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :homes, only: [:index, :show]
  resources :users, only: [:new, :create, :edit, :update]
  get '/mypage', to: "users#mypage"

  resources :movies, only: [:new, :create,]
  
  get 'getstarted', to: 'homes#getstarted'

  resources :movies do
    resources :comments
  end

  root to: 'homes#index'

end
