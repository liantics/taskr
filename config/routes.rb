Rails.application.routes.draw do


  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create] 
  resources :tasks, only: [:index, :create]


  get "/sign_up" => "users#new", as: :sign_up
  get "/sign_in" => "users#new", as: :sign_in

  root 'tasks#index'


end
