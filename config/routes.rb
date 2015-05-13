Rails.application.routes.draw do

  get  'cashorder/index'
  get  'chat/index'
  get  'errors/error404'
  get  'errors/error422'
  get  'errors/error500'
  get  'home/index'
  get  'user_sessions/new'
  get  'user_sessions/create'
  get  'user_sessions/destroy'
  get  'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :chat
  resources :agencies
  resources :microposts
  resources :orders, only: [:index]
  resources :tourists do
    resources :orders
  end
  # resources :orders, only: [:index]
  resources :user_sessions
  resources :users

  root :to => 'home#index'
end
