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

ActiveRecord::Schema.define(version: 2019_06_03_091305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.bigint "user_id"
    t.bigint "exercice_id"
    t.bigint "mood_id"
    t.index ["exercice_id"], name: "index_achievements_on_exercice_id"
    t.index ["mood_id"], name: "index_achievements_on_mood_id"
    t.index ["rating"], name: "index_achievements_on_rating"
    t.index ["user_id"], name: "index_achievements_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "classes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.index ["classes_id"], name: "index_bookings_on_classes_id"
    t.index ["users_id"], name: "index_bookings_on_users_id"
  end

  create_table "classes", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.date "start_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercices", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "photo"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mood_id"
    t.index ["mood_id"], name: "index_exercices_on_mood_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "achievements", "exercices"
  add_foreign_key "achievements", "users"
  add_foreign_key "bookings", "classes", column: "classes_id"
  add_foreign_key "bookings", "users", column: "users_id"
  add_foreign_key "exercices", "moods"
end
