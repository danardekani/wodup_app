class AddNewColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :workouts, :weight_id, :integer 
    remove_column :workouts, :reps_id, :string 
    remove_column :workouts, :notes_id, :text 
    remove_column :workouts, :time_id, :time 
    add_column :workouts, :weight, :integer
    add_column :workouts, :reps, :integer
    add_column :workouts, :notes, :text
    add_column :workouts, :time, :time
  end
end
