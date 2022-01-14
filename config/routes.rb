Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/all_products" => "products#available_products"

  get "/all_products/:name" => "products#available_products"

  get "/products" => "products#index"

  get "/products/:id" => "products#show"
  

  # Defines the root path route ("/")
  # root "articles#index"
end
