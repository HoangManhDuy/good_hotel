Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users, controllers: {
        registrations: "users/registrations",
        sessions: "users/sessions"
      }
  resources :hotels, only: [:index]
end
