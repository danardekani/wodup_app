class Api::UserWorkoutsController < ApplicationController
  #user_workouts create method found in workout_controller
  def index
    if params[:workout_id] 
      @user_workouts = UserWorkout.where(workout_id: params[:workout_id]).order("weight" => "desc")
    else
      @user_workouts = UserWorkout.all
    end
    render 'index.json.jb'
  end
end
  