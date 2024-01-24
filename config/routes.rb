Rails.application.routes.draw do
  resources :houses
  resources :tenants, only: [:index, :show, :create, :update, :destroy]
  get "/me", to: "tenants#show"
  post "/signup", to: "tenants#create"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
