# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_24_075624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.integer "user_id"
    t.integer "note_id"
    t.string "exercise_name"
    t.float "weight"
    t.float "weight_two"
    t.float "weight_three"
    t.float "weight_four"
    t.float "weight_five"
    t.float "weight_six"
    t.float "weight_seven"
    t.float "weight_eight"
    t.float "weight_nine"
    t.float "weight_ten"
    t.integer "set"
    t.integer "set_two"
    t.integer "set_three"
    t.integer "set_four"
    t.integer "set_five"
    t.integer "set_six"
    t.integer "set_seven"
    t.integer "set_eight"
    t.integer "set_nine"
    t.integer "set_ten"
    t.integer "rep"
    t.integer "rep_two"
    t.integer "rep_three"
    t.integer "rep_four"
    t.integer "rep_five"
    t.integer "rep_six"
    t.integer "rep_seven"
    t.integer "rep_eight"
    t.integer "rep_nine"
    t.integer "rep_ten"
    t.text "exercise_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.text "introduction"
    t.string "profile_photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
