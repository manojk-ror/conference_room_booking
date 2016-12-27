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

ActiveRecord::Schema.define(version: 20161227081611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "conference_room_id"
    t.string   "comment"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["conference_room_id"], name: "index_bookings_on_conference_room_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "conference_rooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.string   "floor"
    t.string   "location"
    t.string   "phone"
    t.boolean  "slide_projector",               default: true
    t.boolean  "film_projector"
    t.boolean  "remote_control_for_projectors", default: true
    t.boolean  "wifi_capability"
    t.boolean  "video_conferencing_system"
    t.boolean  "smart_board"
    t.boolean  "loudspeakers",                  default: true
    t.boolean  "laser_pointers",                default: true
    t.boolean  "projector_screens",             default: true
    t.boolean  "microphones",                   default: true
    t.boolean  "computer",                      default: true
    t.boolean  "room_sound_proofed",            default: true
    t.boolean  "electrical_power_sufficient",   default: true
    t.boolean  "emergency_alarms",              default: true
    t.boolean  "cctv"
    t.boolean  "air_conditioning",              default: true
    t.boolean  "cd_dvd_player",                 default: true
    t.boolean  "high_speed_internet",           default: true
    t.boolean  "intelligent_lighting"
    t.boolean  "comfortable_adjustable_chairs"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "before_discount_amount",        default: 5000
    t.float    "discount_rate",                 default: 0.0
    t.integer  "after_discount_amount"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "conference_rooms"
  add_foreign_key "bookings", "users"
end
