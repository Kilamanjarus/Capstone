# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2022_09_28_174549) do
=======
ActiveRecord::Schema[7.0].define(version: 2022_09_16_180912) do
>>>>>>> a25d9c31d9d3052970833bbf727a38f95a7b5b5e
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipment", force: :cascade do |t|
    t.string "equipment_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "target"
    t.string "gifUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "equipment"
    t.string "bodyPart"
  end

  create_table "routines", force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "workout_id"
    t.integer "added_weight"
    t.integer "reps"
    t.integer "sets"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "user_equipments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "equipment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.integer "age"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

end
