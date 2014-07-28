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

ActiveRecord::Schema.define(version: 20140728064055) do

  create_table "adv_advsizes", force: true do |t|
    t.string   "code"
    t.string   "advsize"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adv_advtypes", force: true do |t|
    t.string   "code"
    t.string   "advtype"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adv_finaldesigns", force: true do |t|
    t.integer  "request_id"
    t.string   "upload_by",          limit: 45
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "final_file_name"
    t.string   "final_content_type"
    t.integer  "final_file_size"
    t.datetime "final_updated_at"
  end

  create_table "adv_originalsources", force: true do |t|
    t.integer  "request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "adv_pdates", force: true do |t|
    t.integer  "request_id"
    t.date     "p_date"
    t.string   "p_layout",   limit: 10
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adv_requests", force: true do |t|
    t.string   "code"
    t.string   "c_name"
    t.string   "a_size"
    t.string   "a_type"
    t.string   "article"
    t.string   "submit_by"
    t.string   "order_taker"
    t.string   "confirm_by"
    t.string   "status"
    t.string   "designer"
    t.string   "p_type"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "issue_cities", force: true do |t|
    t.string   "code"
    t.string   "city"
    t.integer  "province_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issue_cpublishes", force: true do |t|
    t.integer  "issue_publish_id"
    t.string   "c_code"
    t.integer  "quantity"
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
    t.string   "province",         limit: 45
    t.string   "city",             limit: 45
    t.string   "map_file_name"
    t.string   "map_content_type"
    t.integer  "map_file_size"
    t.datetime "map_updated_at"
  end

  create_table "issue_provinces", force: true do |t|
    t.string   "code"
    t.string   "province"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issue_publishes", force: true do |t|
    t.date     "date"
    t.string   "operator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issue_types", force: true do |t|
    t.string   "code"
    t.string   "c_type"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newspaper_layouts", force: true do |t|
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchase_requests", force: true do |t|
    t.string   "code"
    t.string   "p_name"
    t.integer  "quantity"
    t.string   "unit"
    t.date     "request_date"
    t.integer  "estimate_price"
    t.string   "submit_by"
    t.string   "submit_remark"
    t.string   "p_confirm"
    t.string   "confirm_remark"
    t.date     "p_plan"
    t.string   "p_location"
    t.integer  "p_net_price"
    t.integer  "p_vat"
    t.integer  "p_total_price"
    t.string   "w_location"
    t.string   "operator"
    t.string   "purchase_remark"
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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
