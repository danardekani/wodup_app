Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #View all user information
    get '/users' => 'users#index'

    #View single user information
    get '/users/:id' => 'users#show'

    #Create new user
    post '/users' => 'users#create'

    #Authenticate user login
    post "/sessions" => "sessions#create"
  end
end
