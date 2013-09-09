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

ActiveRecord::Schema.define(version: 20130909000154) do

  create_table "certificates", force: true do |t|
    t.integer  "credits"
    t.string   "topic"
    t.string   "course_title"
    t.datetime "date"
    t.string   "credit_category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.integer  "user_id"
  end

  create_table "periods", force: true do |t|
    t.integer  "user_id"
    t.integer  "state_id"
    t.datetime "period_start"
    t.datetime "period_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.integer  "lic_period"
    t.integer  "credit_hours"
    t.string   "credit_category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.string   "lic_state"
    t.string   "lic_number"
    t.string   "password_digest"
    t.datetime "lic_initial_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
