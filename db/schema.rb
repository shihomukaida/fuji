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

ActiveRecord::Schema.define(version: 20160213103559) do

  create_table "my_books", force: :cascade do |t|
    t.string   "book_name"
    t.string   "author"
    t.integer  "price"
    t.string   "company"
    t.date     "sales_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  create_table "stages", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.string   "start"
    t.integer  "finish"
    t.integer  "gyara"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "email"
    t.boolean  "tent"
    t.text     "note"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "mobile_phone"
  end

end
