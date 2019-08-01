class User < ApplicationRecord
  has_many :workouts, through: :user_workouts
  has_one :gym
  has_many :user_workouts
end
