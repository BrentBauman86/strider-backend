Rails.application.routes.draw do
  post '/api/login', to: "api/sessions#create"
  delete '/api/logout', to: "api/sessions#destroy"
  get "/api/get_current_user", to: "api/sessions#get_current_user"

  namespace :api do 
    resources :runs
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
