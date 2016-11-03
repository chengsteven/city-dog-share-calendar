# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161102035449) do

  create_table "fullcalendar_engine_event_series", force: :cascade do |t|
    t.integer  "frequency",  default: 1
    t.string   "period",     default: "weekly"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "sunday",     default: false
    t.boolean  "monday",     default: false
    t.boolean  "tuesday",    default: false
    t.boolean  "wednesday",  default: false
    t.boolean  "thursday",   default: false
    t.boolean  "friday",     default: false
    t.boolean  "saturday",   default: false
  end

  create_table "fullcalendar_engine_events", force: :cascade do |t|
    t.string   "title"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",         default: false
    t.text     "description"
    t.integer  "event_series_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fullcalendar_engine_events", ["event_series_id"], name: "index_fullcalendar_engine_events_on_event_series_id"

  create_table "users", force: :cascade do |t|
    t.string   "uid"
    t.string   "first_name"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_name"
    t.string   "location"
    t.string   "gender"
    t.string   "image"
    t.string   "status"
    t.string   "phone_number"
    t.string   "email"
    t.string   "description"
    t.string   "availability"
  end

end
