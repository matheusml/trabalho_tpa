TrabalhoTpa::Application.routes.draw do
  
  get "sessions/new"

  root :to => "sessions#new"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  resources :users
  resources :sessions
  resources :products
  resources :catalogues
  resources :carts
  
  match "/products_by_catalogue/:id" => "products#products_by_catalogue", :as => "products_by_catalogue"
  match "/add_to_cart/:product_id" => "carts#add_to_cart", :as => "add_to_cart"
  match "/destroy_cart_item/:id" => "carts#destroy_cart_item", :as => "destroy_cart_item"

end
