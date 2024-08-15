Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"
  get "about-us", to: "pages#about_us"
  get "admin", to: "pages#admin"
  get "corporate", to: "pages#corporate"
  get "charity", to: "pages#charity"
  get "private", to: "pages#private"
  get "corporate-karaoke", to: "pages#corporate_karaoke"
  get "live-piano-karaoke", to: "pages#live_piano_karaoke"
  get "sustainability", to: "pages#sustainability"
  get "contact-us", to: "pages#contact_us"
  get "pubs", to: "pages#pubs"

  resources :venues, except: [:show ]
  resources :quizmasters, except: [:index ]
  resources :messages, only: [:new, :create]
end
