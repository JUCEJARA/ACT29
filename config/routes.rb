Rails.application.routes.draw do

  resources :users
  root to: 'users#new'

get 'users/sign_up', to: "users#new"
post 'users', to: "users#create"
resources :sessions, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
