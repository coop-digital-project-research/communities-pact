Rails.application.routes.draw do
  resources :pacts, only: [:new, :create, :show]
  resources :members, only: [:show, :new, :create]
  resources :pages, only: :show
  root to: 'pages#index'
end
