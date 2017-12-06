Rails.application.routes.draw do
  resources :pacts, only: [:new, :create, :show]
  resources :members, only: [:show, :new, :create]
  resources :pages, only: :show

  resource :admin, only: :show, controller: :admin

  root to: 'pages#index'
end
