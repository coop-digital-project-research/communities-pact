Rails.application.routes.draw do
  resources :pacts, only: [:new, :create, :show]
  resources :members, only: [:show]
  resources :pages, only: :show
  root to: 'pages#index'
end
