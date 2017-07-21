Rails.application.routes.draw do
  get 'welcome/index'

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "consumers#new", :as => "sign_up"

  resources :consumers

  resources :categories do
  	resources :products
  end

  resources :sessions, only: [:new, :create, :destroy]

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end