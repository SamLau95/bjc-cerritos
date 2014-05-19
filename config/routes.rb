Bjc::Application.routes.draw do
  devise_for :admins
  root to: 'pages#home'

  get '/signup', to: 'pages#signup', as: :signup
  get '/success', to: 'pages#success', as: :success

  resources :signups, only: :create
  post 'charge', to: 'signups#charge', as: :charge
end
