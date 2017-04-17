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

ActiveRecord::Schema.define(version: 20170417213059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "group_topics", force: :cascade do |t|
    t.integer "group_id"
    t.integer "topic_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_refs", force: :cascade do |t|
    t.integer "post_id"
    t.integer "ref_id"
  end

  create_table "posts", force: :cascade do |t|
    t.date     "date"
    t.string   "title"
    t.string   "repo"
    t.text     "summary"
    t.text     "md_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "summary"
    t.text     "business_description"
    t.text     "current_solution"
    t.text     "data_sources"
    t.string   "data_sample1"
    t.string   "data_sample2"
    t.string   "data_sample3"
    t.text     "data_view1"
    t.text     "data_view2"
    t.text     "data_view3"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "refs", force: :cascade do |t|
    t.string   "name"
    t.string   "format"
    t.string   "url"
    t.text     "content"
    t.integer  "topic_id",   default: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.string   "phone"
    t.string   "website"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
