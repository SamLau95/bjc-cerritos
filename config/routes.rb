Bjc::Application.routes.draw do
  root to: "pages#home"

  get '/sign_up', to: 'pages#sign_up', as: :sign_up
end
