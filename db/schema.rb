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

ActiveRecord::Schema.define(version: 20141010143237) do

  create_table "orders", force: true do |t|
    t.string   "token"
    t.string   "transaction_id"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "status"
    t.string   "number"
    t.string   "uuid"
    t.string   "user_id"
    t.decimal  "price"
    t.string   "phone"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payola_affiliates", force: true do |t|
    t.string   "code"
    t.string   "email"
    t.integer  "percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payola_coupons", force: true do |t|
    t.string   "code"
    t.integer  "percent_off"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payola_sales", force: true do |t|
    t.string   "email"
    t.string   "guid"
    t.integer  "product_id"
    t.string   "product_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "stripe_id"
    t.string   "stripe_token"
    t.string   "card_last4"
    t.date     "card_expiration"
    t.string   "card_type"
    t.text     "error"
    t.integer  "amount"
    t.integer  "fee_amount"
    t.integer  "coupon_id"
    t.boolean  "opt_in"
    t.integer  "download_count"
    t.integer  "affiliate_id"
    t.text     "customer_address"
    t.text     "business_address"
    t.string   "stripe_customer_id"
  end

  add_index "payola_sales", ["coupon_id"], name: "index_payola_sales_on_coupon_id"
  add_index "payola_sales", ["email"], name: "index_payola_sales_on_email"
  add_index "payola_sales", ["guid"], name: "index_payola_sales_on_guid"
  add_index "payola_sales", ["product_id", "product_type"], name: "index_payola_sales_on_product"
  add_index "payola_sales", ["stripe_customer_id"], name: "index_payola_sales_on_stripe_customer_id"

  create_table "payola_stripe_webhooks", force: true do |t|
    t.string   "stripe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
