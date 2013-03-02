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
  
  match "/products_by_catalogue/:id" => "products#products_by_catalogue", :as => "products_by_catalogue"

end
