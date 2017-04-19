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

ActiveRecord::Schema.define(version: 20170419071342) do

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
    t.string   "repo",       default: "please add repo url"
    t.text     "summary",    default: "summary is blank"
    t.text     "md_file",    default: "blank.md"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "business_model"
    t.text     "data_sources"
    t.text     "problem"
    t.text     "wishlist"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ref_topics", force: :cascade do |t|
    t.integer "ref_id"
    t.integer "topic_id"
  end

  create_table "refs", force: :cascade do |t|
    t.string   "name"
    t.string   "format"
    t.string   "url"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrapes", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "selectors"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
