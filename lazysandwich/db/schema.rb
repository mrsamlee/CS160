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

ActiveRecord::Schema.define(version: 20160430091315) do

  create_table "postings", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "name"
    t.float    "price"
    t.text     "ingredients"
  end

  create_table "postings_transactions", id: false, force: :cascade do |t|
    t.integer "posting_id",     null: false
    t.integer "transaction_id", null: false
  end

  add_index "postings_transactions", ["transaction_id", "posting_id"], name: "index_postings_transactions_on_transaction_id_and_posting_id"

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "posting_id"
  end

  add_index "reviews", ["posting_id"], name: "index_reviews_on_posting_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "transactions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "posting_id"
    t.integer  "user_id"
  end

  add_index "transactions", ["posting_id"], name: "index_transactions_on_posting_id"
  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id"

  create_table "transactions_users", id: false, force: :cascade do |t|
    t.integer "user_id",        null: false
    t.integer "transaction_id", null: false
  end

  add_index "transactions_users", ["user_id", "transaction_id"], name: "index_transactions_users_on_user_id_and_transaction_id"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
