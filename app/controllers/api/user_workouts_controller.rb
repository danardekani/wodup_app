class Api::UserWorkoutsController < ApplicationController
  def index
    @user_workouts = UserWorkout.all
    render 'index.json.jb'
  end
end
#user_workouts create method found in workout_controller
