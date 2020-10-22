Rails.application.routes.draw do
  get '/about', to: 'pages#about'

  root 'pages#index', as: "home"

  resources :subscribers, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end