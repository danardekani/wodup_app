class Workout < ApplicationRecord
  has_many :user_workouts
  has_many :users, through: :user_workouts
end
  
  # validates :workouts, presence: true 
  # time_select("time", include_seconds: true) 