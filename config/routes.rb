Rails.application.routes.draw do
  devise_for :users
  resources :friends
  # get 'home/index'
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "home/about", as: :home_about

  # Defines the root path route ("/")
  # root "posts#index"
end
