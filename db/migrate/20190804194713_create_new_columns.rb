class CreateNewColumns < ActiveRecord::Migration[6.0]
  def change
    create_table :new_columns do |t|
      add_column :user_workouts, :workout_id, :integer
      add_column :user_workouts, :user_id, :integer
    end
  end
end
