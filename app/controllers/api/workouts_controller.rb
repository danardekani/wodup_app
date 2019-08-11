class Api::WorkoutsController < ApplicationController
  def create
    @workout = Workout.new(
      name: params[:name],
      workout_type: params[:workout_type],
      weight: params[:weight],
      reps: params[:reps],
      notes: params[:notes],
      time: params[:time] 
      )
    if @workout.save!
      render 'success.json.jb', status: :created
    else
      render 'fail.json.jb', status: :bad_request
    end
  end
end