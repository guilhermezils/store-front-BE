Rails.application.routes.draw do
  resources :scores
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      # post '/login', to: 'users#login'
      get '/profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


###### Attention#####
#1. remove :index in resources!!!!!