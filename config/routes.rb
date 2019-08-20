Rails.application.routes.draw do
  get '/api/login', to: 'sessions#create'
  post '/api/login', to: "sessions#create"
  delete '/api/logout', to: "sessions#destroy"


  namespace :api do 
    resources :runs
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
