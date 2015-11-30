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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20151130222427) do

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.date     "release"
    t.string   "genre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ratings", :force => true do |t|
    t.text     "comment"
    t.integer  "review"
    t.integer  "song_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ratings", ["song_id"], :name => "index_ratings_on_song_id"

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.time     "length"
    t.integer  "album_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "songs", ["album_id"], :name => "index_songs_on_album_id"

end
