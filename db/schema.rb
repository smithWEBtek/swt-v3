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

ActiveRecord::Schema.define(version: 20170421135807) do

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
    t.string   "video_url"
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
    t.text     "url"
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
    t.string   "company"
    t.string   "website"
    t.string   "about"
    t.string   "full_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "role",                   default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
