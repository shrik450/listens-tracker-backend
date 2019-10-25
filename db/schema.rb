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

ActiveRecord::Schema.define(version: 20191025091728) do

  create_table "appearances", force: :cascade do |t|
    t.integer "speaking_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "episode_id", null: false
    t.integer "host_id", null: false
  end

  create_table "episodes", force: :cascade do |t|
    t.string "number", null: false
    t.string "name", null: false
    t.string "show_notes"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "feed_id", null: false
    t.datetime "air_date", null: false
    t.index ["feed_id", "number"], name: "index_episodes_on_feed_id_and_number"
  end

  create_table "feeds", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hosts", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plays", force: :cascade do |t|
    t.datetime "played_at", null: false
    t.integer "play_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "episode_id", null: false
  end

end
