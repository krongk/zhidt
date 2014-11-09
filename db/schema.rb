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

ActiveRecord::Schema.define(version: 20141109061435) do

  create_table "flows", force: true do |t|
    t.integer  "package_id"
    t.string   "title"
    t.string   "description"
    t.text     "temp_content"
    t.text     "tutorial"
    t.string   "icon",         default: "pencil"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "flows", ["package_id"], name: "index_flows_on_package_id", using: :btree

  create_table "notices", force: true do |t|
    t.integer  "user_id"
    t.string   "level",      default: "info"
    t.string   "message"
    t.boolean  "is_read",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notices", ["user_id"], name: "index_notices_on_user_id", using: :btree

  create_table "packages", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "icon",        default: "tasks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_package_flow_comments", force: true do |t|
    t.integer  "site_package_flow_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "site_package_flow_comments", ["site_package_flow_id"], name: "index_site_package_flow_comments_on_site_package_flow_id", using: :btree

  create_table "site_package_flows", force: true do |t|
    t.integer  "site_package_id"
    t.integer  "flow_id"
    t.text     "content"
    t.string   "status",          default: "open"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "site_package_flows", ["flow_id"], name: "index_site_package_flows_on_flow_id", using: :btree
  add_index "site_package_flows", ["site_package_id"], name: "index_site_package_flows_on_site_package_id", using: :btree

  create_table "site_packages", force: true do |t|
    t.integer "site_id"
    t.integer "package_id"
  end

  add_index "site_packages", ["package_id"], name: "index_site_packages_on_package_id", using: :btree
  add_index "site_packages", ["site_id"], name: "index_site_packages_on_site_id", using: :btree

  create_table "sites", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["user_id"], name: "index_sites_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
    t.integer  "parent_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
