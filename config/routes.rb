Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :user
  resources :event
  resources :event_attendence
  resource :sessions, only: [:new,:create,:destroy]
  root to: "user#index"


end
