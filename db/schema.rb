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

ActiveRecord::Schema.define(version: 20150913165333) do

  create_table "closed_shifts", force: true do |t|
    t.integer  "open_shift_id"
    t.integer  "new_assignee_id"
    t.datetime "claimed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: true do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.integer  "shift_id"
    t.integer  "shift_type"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "open_shifts", force: true do |t|
    t.integer  "set_shift_id"
    t.integer  "original_assignee_id"
    t.datetime "opened"
    t.boolean  "is_trade?"
    t.boolean  "is_request?"
    t.boolean  "is_cover?"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "set_shifts", force: true do |t|
    t.integer  "assignee_id"
    t.integer  "assigner_id"
    t.datetime "start"
    t.datetime "end"
    t.boolean  "is_PTO?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
