Rails.application.routes.draw do
  get 'pages/welcome'
  get '/index', to: 'pages#index', as: 'index'  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#welcome'
  # root to: 'pages#index'
end
