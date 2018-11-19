Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :admins, controllers: {
        sessions: "admins/sessions"
            }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount ActionCable.server => '/cable'

  root "static_pages#home"
  devise_for :users, controllers: {
        registrations: "users/registrations",
        sessions: "users/sessions"
            }

  resources :users, only: :show

  resources :hotel_reviews

  resources :hotels do
    resources :comments
  end
  resources :comments do
    resources :comments
  end

end
