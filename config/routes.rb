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
    post '/sessions' => 'sessions#create'

    #View all workout names and workout types
    get '/workouts' => 'workouts#index'

    #View all workout weihgts, reps, notes, and times
    # get '/user_workouts' => 'user_workouts#index'

    #Users can add new workouts to their profile
    post '/workouts' => 'workouts#create'

    #Leaderboard 
    get '/user_workouts' => 'user_workouts#index'  
  end
end
