class AddWorkoutTypeColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :user_workouts, :workout_type, :string
  end
end
