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

ActiveRecord::Schema.define(version: 20150814134638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.datetime "reservation_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "num_guests"
    t.integer  "num_tables"
    t.integer  "num_chairs"
    t.integer  "num_adapters"
    t.integer  "num_whiteboards"
    t.boolean  "has_alcohol"
    t.datetime "reservation_time"
  end

  add_index "reservations", ["room_id"], name: "index_reservations_on_room_id", using: :btree
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.boolean "has_projector"
    t.boolean "has_whiteboard_walls"
    t.integer "max_guests"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
