Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "about-us", to: "pages#aboutus"
  get "admin", to: "pages#admin"
  resources :venues
  resources :quizmasters do
    resources :gigs
  end
end
