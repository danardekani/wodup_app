class UserWorkout < ApplicationRecord
  belongs_to :users
  belongs_to :workouts  
end
