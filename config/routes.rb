Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"

     #website  | controller | method
  get '/products' => 'products#index'
  get '/products/:id' => 'products#show'
  get '/order' => 'orders#index'
  patch  '/product/:id' => 'products#update'
  post '/product' => 'products#create'
  post 'users' => 'users#create'
  post '/sessions' => 'sessions#create'
  post '/order' => 'orders#create'
  post '/carted_products' => 'carted_products#create'
  end

#fullstack rails
  post '/product' => 'products#create'
  get '/product/new' => 'products#new'
  get '/product' => 'products#index'
  get '/product/:id' => 'products#show'
  get '/product/edit/:id' => 'products#edit'
end 