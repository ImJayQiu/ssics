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

ActiveRecord::Schema.define(version: 20140509094707) do

  create_table "general_notices", force: true do |t|
    t.date     "date"
    t.string   "notice"
    t.string   "operator"
    t.date     "e_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title",      limit: 20
  end

  create_table "issue_areas", force: true do |t|
    t.string   "code"
    t.string   "area"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issue_customers", force: true do |t|
    t.string   "code"
    t.string   "c_name"
    t.string   "c_address"
    t.string   "area"
    t.string   "c_type"
    t.string   "p_name"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remark"
  end

  create_table "issue_types", force: true do |t|
    t.string   "code"
    t.string   "c_type"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "employer_id",            limit: 45
    t.string   "name",                   limit: 45
    t.string   "department",             limit: 45
    t.string   "role",                   limit: 45
    t.string   "phone_no",               limit: 12
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
