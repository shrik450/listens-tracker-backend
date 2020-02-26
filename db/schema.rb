# typed: strict
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_04_051805) do

  create_table "appearances", force: :cascade do |t|
    t.integer "speaking_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "episode_id", null: false
    t.integer "host_id", null: false
    t.index ["host_id", "episode_id"], name: "index_appearances_on_host_id_and_episode_id", unique: true
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
    t.integer "duration"
    t.string "url"
    t.index ["feed_id", "number"], name: "index_episodes_on_feed_id_and_number"
  end

  create_table "feeds", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "feed_url"
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
