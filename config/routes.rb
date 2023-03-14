Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  get 'rooms/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'users',to: 'devise/sessions#new'
  end
  # Defines the root path route ("/")
  # root "articles#index"
  # get '/signin', to: 'sessions#new'
  # post '/signin', to: 'sessions#create'
  # delete '/signout', to: 'sessions#destroy'

  # resources :rooms
  # resources :users
  # root 'rooms#index'
end
