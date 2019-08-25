class Api::UserWorkoutsController < ApplicationController
  #user_workouts create method found in workout_controller
  def index
    if @user_workouts = UserWorkout.all
      render 'index.json.jb'
    else
      @user_workouts = UserWorkout.where(workout_id: params[:workout_id]).order("weight" => "desc")
      render 'index.json.jb'
    end
  end
end
