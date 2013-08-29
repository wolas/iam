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

ActiveRecord::Schema.define(version: 20130829163329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.text     "bio"
    t.string   "name"
    t.date     "birth"
    t.string   "nationality"
    t.string   "web"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "summary"
    t.datetime "start"
    t.datetime "stop"
    t.string   "place"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

  create_table "events_paintings", id: false, force: true do |t|
    t.integer "event_id"
    t.integer "painting_id"
  end

  create_table "paintings", force: true do |t|
    t.integer  "artist_id"
    t.string   "title"
    t.string   "technique"
    t.float    "width"
    t.float    "height"
    t.date     "finished_on"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.integer  "parent_id"
    t.string   "parent_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "avatar_id"
    t.string   "avatar_type"
  end

end
