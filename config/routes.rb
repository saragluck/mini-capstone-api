Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/all_products", controller: "products", action: "all_products"
  
  get "/apple", controller: "products", action: "apple"
  get "/corn", controller: "products", action: "corn"
  get "/pomegranate", controller: "products", action: "pomegranate"
end
