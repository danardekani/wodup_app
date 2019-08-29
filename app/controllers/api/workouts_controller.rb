class Api::WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
    render 'index.json.jb'
  end
  
  def create
    # @workout = Workout.new(
    @userworkout = UserWorkout.new(
      weight: params[:weight],
      reps: params[:reps],
      notes: params[:notes],
      time: params[:time],
      user_id: current_user.id,
      workout_id: params[:workout_id],
      name: params[:name],
      workout_type: params[:workout_type]
    )
  # if @workout.save!
    if @userworkout.save!
      render 'success.json.jb', status: :created
    else
      render 'fail.json.jb', status: :bad_request
    end
  end
end