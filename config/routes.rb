Rails.application.routes.draw do
  resources :adoptions
  resources :users
  resources :pets

  post '/login', to: 'sessions#login'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
