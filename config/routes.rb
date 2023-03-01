Rails.application.routes.draw do
  resources :jobs
  resources :practitioners
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "practitioners#index"
end
