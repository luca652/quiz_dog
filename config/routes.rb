Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"
  get "about-us", to: "pages#about_us"
  get "admin", to: "pages#admin"
  get "host-your-own", to: "pages#host_your_own"
  get "start-a-quiz", to: "pages#start_a_quiz"
  get "corporate", to: "pages#corporate"
  get "charity", to: "pages#charity"
  get "private", to: "pages#private"
  get "virtual", to: "pages#virtual"
  get "corporate-karaoke", to: "pages#corporate_karaoke"
  get "live-piano-karaoke", to: "pages#live_piano_karaoke"
  get "sustainability", to: "pages#sustainability"
  get "contact-us", to: "pages#contact_us"

  resources :venues, except: [:show ]
  resources :quizmasters, except: [:index, :show ]
  resources :messages, only: [:new, :create]
end
