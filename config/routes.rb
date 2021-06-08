Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :questions, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :users, only: :show
end