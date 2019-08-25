class AddAndRemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_workouts, :name, :string
    add_column :user_workouts, :first_name, :string
    add_column :user_workouts, :last_name, :string
  end
end
