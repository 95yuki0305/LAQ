Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :questions, only: [:index, :new, :create, :edit, :update, :destroy] do
    member do
      get 'check'
    end
    resources :answers, only: [:index, :create]
  end
  resources :users, only: :show
end