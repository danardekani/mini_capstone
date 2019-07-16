Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"

         #website  | controller | method
    get '/product' => 'products#index'
    get '/product/:id' => 'products#show'
    get '/order' => 'orders#index'
    # update
    patch  '/product/:id' => 'products#update'
    # create
    post '/product' => 'products#create'
    post 'users' => 'users#create'
    post '/sessions' => 'sessions#create'
    post '/order' => 'orders#create'

  end
end 