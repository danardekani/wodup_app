class User < ApplicationRecord
  has_many :user_workouts
  has_many :workouts, through: :user_workouts
  has_one :gym
  has_secure_password
  validates :email, presence: true, uniqueness: true, confirmation: true 
  validates :email_confirmation, presence: true
  validates :first_name, :last_name, :birth_date, :email, :password_digest, presence: true
end
