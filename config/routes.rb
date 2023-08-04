Rails.application.routes.draw do
  get 'venues/index'
  devise_for :users
  root to: "pages#home"
  get "admin", to: "pages#admin"
  resources :venues
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
