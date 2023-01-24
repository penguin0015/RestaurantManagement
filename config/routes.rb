Rails.application.routes.draw do
  resources :reservation_tables
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'selects#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
