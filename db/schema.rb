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

ActiveRecord::Schema.define(version: 20150629191927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barbecue_orders", force: true do |t|
    t.text     "package_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.text     "appointment_date"
    t.text     "grocery_date"
    t.string   "contact_info"
    t.string   "address"
    t.string   "status"
    t.string   "promo_code"
    t.text     "add_ons"
    t.string   "food_restrictions"
  end

  add_index "barbecue_orders", ["customer_id"], name: "index_barbecue_orders_on_customer_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "customername"
    t.string   "provider"
    t.string   "uid"
    t.string   "stripe_id"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

  create_table "food_objects", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "nutritional"
    t.string   "imageurl"
    t.string   "description"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.string   "contact_info"
    t.text     "food_items"
    t.string   "address"
    t.string   "status"
    t.text     "appointment_date"
    t.text     "grocery_date"
    t.text     "num_meals"
    t.string   "promo_code"
    t.string   "food_restrictions"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

end
