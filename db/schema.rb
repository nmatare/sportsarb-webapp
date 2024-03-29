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

ActiveRecord::Schema.define(version: 20161209164357) do

  create_table "bios", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.text     "address"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "country"
    t.string   "gender"
    t.integer  "age"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "last_upload"
  end

  create_table "teams", force: :cascade do |t|
    t.text     "team_details"
    t.string   "sport"
    t.date     "game_date"
    t.integer  "points"
    t.datetime "created_at",     null: false
    t.integer  "transaction_id"
    t.datetime "updated_at",     null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "credit"
    t.string   "debit"
    t.datetime "created_at", null: false
    t.string   "name"
    t.integer  "user_id"
    t.text     "notes"
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
