Rails.application.routes.draw do
  get 'welcome/index'

  resources :consumers 
  resources :cart_items
  resources :carts
  resources :categories
  resources :products

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  
  get "sign_up" => "consumers#new", :as => "sign_up"
  get "profile" => "consumers#profile"

  get 'add_to_cart' => 'carts#add_to_cart'
  get 'remove_item' => 'carts#remove_item'
  get 'viewcart' => 'carts#view_cart'

  resources :sessions, only: [:new, :create, :destroy]

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end