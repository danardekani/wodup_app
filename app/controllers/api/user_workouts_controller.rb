class Api::UserWorkoutsController < ApplicationController
  def index
    @user_workouts = UserWorkout.where(workout_id:43).order("weight" => "desc")
    render 'index.json.jb'
  end
end
#user_workouts create method found in workout_controller
