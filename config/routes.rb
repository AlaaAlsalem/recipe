# frozen_string_literal: true

Rails.application.routes.draw do

  resources :foods
  get 'public_recipes/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :culinary_recipes do
    member do
      post :add_ingredient
      get :new_ingredient_form
      delete :destroy_ingredient
      patch :toggle_public_status
    end
  end

  root 'culinary_recipes#index'

  get 'public_recipes', to: 'public_recipes#index'



end
