class AddNameColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :user_workouts, :name, :string
  end
end
