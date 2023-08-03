Rails.application.routes.draw do
  root "home#index"

  # Sessions
  resources :sessions, only: [:new, :create, :destroy]
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # Pages
  get "bio_mechanist", to: "bio_mechanists#index"
  get "mental_health_professional", to: "mental_health_professionals#index"
  get "nutritionist", to: "nutritionists#index"
  get "professional_athlete", to: "professional_athletes#index"

  # Users
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  get "signup", to: "users#new"
end
