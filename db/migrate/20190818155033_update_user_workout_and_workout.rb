class UpdateUserWorkoutAndWorkout < ActiveRecord::Migration[6.0]
  def change
    remove_column :workouts, :weight, :integer
    remove_column :workouts, :reps, :integer
    remove_column :workouts, :notes, :text
    remove_column :workouts, :time, :time
    add_column :user_workouts, :weight, :integer
    add_column :user_workouts, :reps, :integer 
    add_column :user_workouts, :notes, :text 
    add_column :user_workouts, :time, :time
  end
end
