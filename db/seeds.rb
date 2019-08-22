# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'
include Faker
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 500.times do |user|
#   User.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     birth_date: Faker::Date.birthday,
#     height: Faker::Measurement.height,
#     weight: Faker::Measurement.weight,  
#     user_name: Faker::Internet.username,
#     password: Faker::Internet.password,
#     address: Faker::Address.full_address,
#     business: Faker::TvShows::Seinfeld.business
#     # gym: Faker::Seinfeld.business
#     # gym: Faker::Company.profession
#   )
# end

userworkout = UserWorkout.create!(user_id: 22, workout_id: 43, weight: 200, reps: 1 )
userworkout = UserWorkout.create!(user_id: 23, workout_id: 43, weight: 300, reps: 1 )
userworkout = UserWorkout.create!(user_id: 24, workout_id: 43, weight: 400, reps: 1 )


