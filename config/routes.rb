Rails.application.routes.draw do
  get 'sessions/new'
  
  resources :posts

  get '/register', to: 'users#new'
  resources :users, only: [:create]

  get "/sign_in", to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  resource :sessions, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
