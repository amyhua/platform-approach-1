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

ActiveRecord::Schema.define(version: 20140123073346) do

  create_table "apps", force: true do |t|
    t.string "name"
    t.string "slug"
    t.text   "description"
    t.text   "detailed_summary"
  end

  create_table "configurations", force: true do |t|
    t.string   "key"
    t.string   "value"
    t.string   "format"
    t.integer  "customer_app_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "configurations", ["customer_app_id"], name: "index_configurations_on_customer_app_id"

  create_table "customer_apps", force: true do |t|
    t.string   "site_title"
    t.string   "name"
    t.string   "slug"
    t.string   "custom_url"
    t.text     "description"
    t.string   "contact_name"
    t.string   "contact_email"
    t.integer  "customer_id"
    t.integer  "app_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_apps", ["app_id"], name: "index_customer_apps_on_app_id"
  add_index "customer_apps", ["customer_id"], name: "index_customer_apps_on_customer_id"

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
