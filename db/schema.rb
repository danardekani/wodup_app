# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_25_134230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gyms", force: :cascade do |t|
    t.string "gym_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "user_name"
    t.string "password"
    t.string "facebook_url"
    t.string "twitter_url"
    t.string "instagram_url"
    t.string "website_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "new_columns", force: :cascade do |t|
  end

  create_table "user_workouts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "workout_id"
    t.integer "user_id"
    t.integer "weight"
    t.integer "reps"
    t.text "notes"
    t.time "time"
    t.string "first_name"
    t.string "last_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "birth_date"
    t.string "height"
    t.string "weight"
    t.string "user_name"
    t.string "facebook_url"
    t.string "twitter_url"
    t.string "instagram_url"
    t.string "address"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gender"
    t.string "business"
    t.string "password_digest"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "workout_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
