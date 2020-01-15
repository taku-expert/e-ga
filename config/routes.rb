Rails.application.routes.draw do
  devise_for :users 
    get '/users/sign_out' => 'devise/sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :homes, only: [:index, :show]
  resources :users, only: [:new, :create, :edit, :update]
  get '/mypage', to: "users#mypage"

  resources :movies, only: [:new, :create,]
  
  get 'getstarted', to: 'homes#getstarted'

  resources :movies do
    resources :comments
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end

  resources :comments do
    post 'add' => 'goods#create'
    delete '/add' => 'goods#destroy'
  end

  root to: 'homes#index'

end
