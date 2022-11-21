Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # All these are actions that happen to the products
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # All these are actions that happen to the users

  post "/users" => "users#create"

  # These are session actions

  post "/sessions" => "sessions#create"  #Logs in

  # Order actions

  post "/orders" => "orders#create"

  get "/orders/:id" => "orders#show"

  get "/orders" => "orders#index"

  # Cart actions

  post "/cart" => "carted_products#create"

  get "/cart" => "carted_products#index"
end
