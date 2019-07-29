class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :workout_type
      t.integer :workout_id
      t.integer :weight_id
      t.string :reps_id
      t.text :notes_id
      t.time :time_id

      t.timestamps
    end
  end
end
