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

ActiveRecord::Schema.define(version: 2018_11_30_161427) do

  create_table "bookings", force: :cascade do |t|
    t.string "email"
    t.integer "room_id"
    t.integer "subject_id"
    t.integer "timeslot_id"
    t.integer "status"
    t.boolean "supervision"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_bookings_on_room_id"
    t.index ["subject_id"], name: "index_bookings_on_subject_id"
    t.index ["timeslot_id"], name: "index_bookings_on_timeslot_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "coursename"
    t.integer "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_courses_on_faculty_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.string "name"
    t.string "school"
    t.integer "phonenumber"
    t.string "email"
    t.integer "room_id"
    t.integer "stafftype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_faculties_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "floor"
    t.integer "seating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "classname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
    t.integer "faculty_id"
    t.index ["course_id"], name: "index_subjects_on_course_id"
    t.index ["faculty_id"], name: "index_subjects_on_faculty_id"
  end

  create_table "timeslots", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
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
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
