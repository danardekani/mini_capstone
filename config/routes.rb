Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"

         #website  | controller | method
    get '/product' => 'products#index'
    get '/product/:id' => 'products#show'
    patch  '/product/:id' => 'products#update'
  end
end