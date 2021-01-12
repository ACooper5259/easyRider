Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root "pages#index", as: :authenticated_root
  end
   
  # get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#welcome'
  # root to: 'pages#index'
  
  namespace :api do
    namespace :v1 do
      resources :bookings
    end
  end

end
