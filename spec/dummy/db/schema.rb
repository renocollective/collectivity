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

ActiveRecord::Schema.define(:version => 20111211073631) do

  create_table "collectivity_members", :force => true do |t|
    t.integer  "organization_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "password_salt"
    t.integer  "failed_attempts",                       :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
  end

  add_index "collectivity_members", ["authentication_token"], :name => "index_collectivity_members_on_authentication_token", :unique => true
  add_index "collectivity_members", ["confirmation_token"], :name => "index_collectivity_members_on_confirmation_token", :unique => true
  add_index "collectivity_members", ["email"], :name => "index_collectivity_members_on_email", :unique => true
  add_index "collectivity_members", ["reset_password_token"], :name => "index_collectivity_members_on_reset_password_token", :unique => true
  add_index "collectivity_members", ["unlock_token"], :name => "index_collectivity_members_on_unlock_token", :unique => true

  create_table "collectivity_organizations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collectivity_plans", :force => true do |t|
    t.string   "name"
    t.integer  "days_per_week"
    t.integer  "price_in_cents",    :default => 0,         :null => false
    t.string   "currency",          :default => "USD"
    t.string   "billing_frequency", :default => "monthly"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
