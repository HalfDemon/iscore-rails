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

ActiveRecord::Schema.define(:version => 20121228032454) do

  create_table "anomalies", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "due_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "availability_checks", :force => true do |t|
    t.datetime "pubic_run_time"
    t.datetime "actual_start_time"
    t.datetime "actual_end_time"
    t.integer  "number_of_services_up"
    t.integer  "number_of_services_down"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "availability_service_checks", :force => true do |t|
    t.integer  "service_id"
    t.integer  "availability_check_id"
    t.integer  "site_id"
    t.boolean  "available"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "availability_service_checks", ["availability_check_id"], :name => "index_availability_service_checks_on_availability_check_id"
  add_index "availability_service_checks", ["service_id"], :name => "index_availability_service_checks_on_service_id"
  add_index "availability_service_checks", ["site_id"], :name => "index_availability_service_checks_on_site_id"

  create_table "flags", :force => true do |t|
    t.text     "content"
    t.integer  "site_id"
    t.boolean  "captured"
    t.text     "captured_flag"
    t.integer  "earned_back_points"
    t.boolean  "earned_back"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "flags", ["site_id"], :name => "index_flags_on_site_id"

  create_table "service_types", :force => true do |t|
    t.string   "name"
    t.integer  "port"
    t.integer  "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.integer  "port"
    t.string   "subdomain"
    t.integer  "site_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sites", :force => true do |t|
    t.string   "name",                            :null => false
    t.string   "organization",                    :null => false
    t.integer  "points",           :default => 0
    t.string   "number",                          :null => false
    t.datetime "last_sign_in"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "captured_flags"
    t.integer  "uncaptured_flags"
  end

  add_index "sites", ["name"], :name => "index_sites_on_name"
  add_index "sites", ["number"], :name => "index_sites_on_number"
  add_index "sites", ["organization"], :name => "index_sites_on_organization"

  create_table "usability_reports", :force => true do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usability_reports_checks", :force => true do |t|
    t.boolean  "work"
    t.integer  "site_id"
    t.integer  "service_id"
    t.string   "use"
    t.integer  "usability_reports_submission_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "usability_reports_checks", ["service_id"], :name => "index_usability_reports_checks_on_service_id"
  add_index "usability_reports_checks", ["site_id"], :name => "index_usability_reports_checks_on_site_id"
  add_index "usability_reports_checks", ["usability_reports_submission_id"], :name => "usabilty_report_sub_id"

  create_table "usability_reports_submissions", :force => true do |t|
    t.integer  "site_id"
    t.string   "comments"
    t.integer  "done_by"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
