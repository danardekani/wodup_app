class Workout < ApplicationRecord
  has_many :users, through: :user_workouts
  has_many :user_workouts
  # time_select("time", include_seconds: true) 
end
