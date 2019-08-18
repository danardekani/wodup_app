class Api::WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
    render 'index.json.jb'

  end

  def create
    @workout = Workout.new(
      name: params[:name],
      workout_type: params[:workout_type],
      )
    if @workout.save!
      @userworkout = UserWorkout.new(
      weight: [:weight],
      reps: params[:reps],
      notes: params[:notes],
      time: params[:time],
      user_id: current_user.id,
      workout_id: @workout.id
      )
      if @userworkout.save!
        render 'success.json.jb', status: :created
      else
        render 'fail.json.jb', status: :bad_request
      end
    else
      render 'fail.json.jb', status: :bad_request
    end
  end
end