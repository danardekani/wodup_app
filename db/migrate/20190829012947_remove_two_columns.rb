class RemoveTwoColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_workouts, :name, :string
    remove_column :user_workouts, :workout_type, :string
  end
end
