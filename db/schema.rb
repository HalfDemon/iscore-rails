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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120623205547) do

  create_table "sites", :force => true do |t|
    t.string   "name",                        :null => false
    t.string   "organization",                :null => false
    t.integer  "points",       :default => 0
    t.string   "number",                      :null => false
    t.datetime "last_sign_in"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "sites", ["name"], :name => "index_sites_on_name"
  add_index "sites", ["number"], :name => "index_sites_on_number"
  add_index "sites", ["organization"], :name => "index_sites_on_organization"

  create_table "users", :force => true do |t|
    t.string   "username",                           :null => false
    t.string   "name",                               :null => false
    t.integer  "site_id"
    t.string   "password_digest",                    :null => false
    t.boolean  "admin",           :default => false
    t.string   "team",                               :null => false
    t.string   "email",                              :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "users", ["admin"], :name => "index_users_on_admin"
  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["id"], :name => "index_users_on_id"
  add_index "users", ["site_id"], :name => "index_users_on_site_id"
  add_index "users", ["username"], :name => "index_users_on_username"

end
