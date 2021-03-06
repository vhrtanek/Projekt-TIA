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

ActiveRecord::Schema.define(version: 20160415091048) do

  create_table "Account", primary_key: "idAccount", force: :cascade do |t|
    t.string "account_name",    limit: 45, null: false
    t.string "account_of_bank", limit: 45, null: false
  end

  add_index "Account", ["idAccount"], name: "account_id", using: :btree

  create_table "Bank_data", id: false, force: :cascade do |t|
    t.integer  "Account_idAccount",         limit: 4,        null: false
    t.date     "accounted_at",                               null: false
    t.datetime "created_at",                                 null: false
    t.integer  "amount",                    limit: 4,        null: false
    t.string   "currency",                  limit: 45,       null: false
    t.integer  "balance",                   limit: 4,        null: false
    t.text     "variable_symbol",           limit: 16777215, null: false
    t.integer  "specific_symbol",           limit: 4
    t.integer  "constant_symbol",           limit: 4
    t.string   "transaction_type",          limit: 45
    t.string   "account_of_counterParty",   limit: 45
    t.string   "name_of_counterParty",      limit: 45
    t.string   "bank_of_counterParty",      limit: 45
    t.string   "information_for_recipient", limit: 255
    t.string   "information",               limit: 255
  end

  add_index "Bank_data", ["Account_idAccount"], name: "bank_id", using: :btree

  create_table "Import", primary_key: "idImport", force: :cascade do |t|
    t.integer "Account_idAccount", limit: 4,   null: false
    t.date    "created_at",                    null: false
    t.string  "name",              limit: 255
  end

  add_index "Import", ["Account_idAccount"], name: "Account_idAccount", using: :btree
  add_index "Import", ["idImport"], name: "import_id", using: :btree

  create_table "users", id: false, force: :cascade do |t|
    t.string  "email",                  limit: 255, null: false
    t.string  "encrypted_password",     limit: 255
    t.string  "role",                   limit: 45
    t.string  "reset_password_token",   limit: 45
    t.date    "reset_password_sent_at"
    t.date    "remember_created_at"
    t.integer "sign_in_count",          limit: 4
    t.date    "current_sign_in_at"
    t.date    "last_sign_in_at"
    t.string  "current_sign_in_ip",     limit: 45
    t.string  "last_sign_in_ip",        limit: 45
    t.date    "created_at"
    t.date    "updated_at"
  end

  add_index "users", ["email"], name: "email", unique: true, using: :btree
  add_index "users", ["email"], name: "index_User_on_email", unique: true, using: :btree
  add_index "users", ["encrypted_password"], name: "encrypted_password", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_User_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "Bank_data", "Account", column: "Account_idAccount", primary_key: "idAccount", name: "Bank_data_ibfk_1"
  add_foreign_key "Import", "Account", column: "Account_idAccount", primary_key: "idAccount", name: "Import_ibfk_1"
end
