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

ActiveRecord::Schema.define(version: 20180321124447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer "speciality_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "appointment_time"
    t.date "appointment_date"
  end

  create_table "healths", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "healthtips", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.string "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "resource_id"
    t.string "resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "specialities", id: :serial, force: :cascade do |t|
    t.string "speciality_name", limit: 255
    t.string "doctor_name", limit: 255
    t.string "doctor_venue", limit: 255
    t.string "phone", limit: 255
    t.string "hospital_name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "search", limit: 255
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "email", limit: 255
    t.string "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

end
