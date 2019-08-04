class DeleteColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :workouts, :workout_id, :integer
  end
end
