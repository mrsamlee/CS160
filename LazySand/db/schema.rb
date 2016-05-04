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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160425052221) do
=======
ActiveRecord::Schema.define(version: 20160425035955) do
<<<<<<< HEAD
>>>>>>> Added a function Sign up page, need to link it to the homepage and add css
=======
>>>>>>> b2d4e03ec808f03db555a18087d055ec47a65bd2
>>>>>>> 0941525d22896b01c9857d6f58ba35f2aad3fdf0

  create_table "accounts", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breads", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postings", force: :cascade do |t|
<<<<<<< HEAD
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "sandwich_id"
    t.integer  "user_id"
  end

  add_index "postings", ["sandwich_id"], name: "index_postings_on_sandwich_id"
  add_index "postings", ["user_id"], name: "index_postings_on_user_id"
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
<<<<<<< HEAD
>>>>>>> Added a function Sign up page, need to link it to the homepage and add css
=======
>>>>>>> b2d4e03ec808f03db555a18087d055ec47a65bd2
>>>>>>> 0941525d22896b01c9857d6f58ba35f2aad3fdf0

  create_table "products", force: :cascade do |t|
    t.string   "producer"
    t.string   "name"
    t.float    "price"
    t.text     "ingredients"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string   "consumer"
    t.string   "name"
    t.text     "ingredients"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.integer  "user_id"
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

=======
  end

<<<<<<< HEAD
>>>>>>> Added a function Sign up page, need to link it to the homepage and add css
=======
>>>>>>> b2d4e03ec808f03db555a18087d055ec47a65bd2
>>>>>>> 0941525d22896b01c9857d6f58ba35f2aad3fdf0
  create_table "sandwiches", force: :cascade do |t|
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.integer  "bread_id"
  end

  add_index "sandwiches", ["bread_id"], name: "index_sandwiches_on_bread_id"

  create_table "sandwiches_ingredients", force: :cascade do |t|
    t.integer "sandwich_id",   null: false
    t.integer "ingredient_id", null: false
  end

  add_index "sandwiches_ingredients", ["ingredient_id"], name: "index_sandwiches_ingredients_on_ingredient_id"
  add_index "sandwiches_ingredients", ["sandwich_id"], name: "index_sandwiches_ingredients_on_sandwich_id"

  create_table "transactions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "posting_id"
  end

  add_index "transactions", ["posting_id"], name: "index_transactions_on_posting_id"
  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id"

  create_table "users", force: :cascade do |t|
    t.text     "about"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "account_id"
  end

  add_index "users", ["account_id"], name: "index_users_on_account_id"

=======
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "about"
    t.string   "avatar"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

<<<<<<< HEAD
>>>>>>> Added a function Sign up page, need to link it to the homepage and add css
=======
>>>>>>> b2d4e03ec808f03db555a18087d055ec47a65bd2
>>>>>>> 0941525d22896b01c9857d6f58ba35f2aad3fdf0
end
