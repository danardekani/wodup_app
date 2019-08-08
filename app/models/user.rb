class User < ApplicationRecord
  has_many :user_workouts
  has_many :workouts, through: :user_workouts
  has_one :gym
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
