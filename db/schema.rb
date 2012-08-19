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

ActiveRecord::Schema.define(:version => 20120819200608) do

  create_table "chat_users", :force => true do |t|
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "facebook_user_id"
    t.string   "link"
  end

  add_index "chat_users", ["facebook_user_id"], :name => "index_chat_users_on_facebook_user_id"

  create_table "chats", :force => true do |t|
    t.string   "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "channel"
    t.string   "name"
    t.string   "url"
  end

  create_table "messages", :force => true do |t|
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chat_id"
    t.integer  "user_id"
  end

end