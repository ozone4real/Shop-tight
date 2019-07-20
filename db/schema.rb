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

ActiveRecord::Schema.define(version: 2019_07_19_060511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.bigint "product_detail_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
    t.index ["product_detail_id", "user_id"], name: "index_carts_on_product_detail_id_and_user_id", unique: true
    t.index ["product_detail_id"], name: "index_carts_on_product_detail_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.string "category_description"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "quantity"
    t.integer "total_price"
    t.integer "status", default: 0
    t.datetime "bill_date"
    t.datetime "ship_date"
    t.integer "charges"
    t.float "sales_tax"
    t.bigint "order_id"
    t.integer "shipper_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_details_id"
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["product_details_id"], name: "index_order_details_on_product_details_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_number"
    t.datetime "payment_date"
    t.bigint "user_id"
    t.bigint "payment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount_payable"
    t.index ["payment_id"], name: "index_orders_on_payment_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "payment_type"
    t.boolean "allowed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.text "description"
  end

  create_table "product_details", force: :cascade do |t|
    t.string "size"
    t.string "color"
    t.integer "price"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "product_available", default: true
    t.integer "quantity_in_stock"
    t.integer "quantity_sold"
    t.index ["product_id"], name: "index_product_details_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_description"
    t.integer "discount"
    t.string "picture"
    t.float "unit_weight"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "brand"
    t.string "url_key"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.string "country"
    t.string "phone"
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "carts", "product_details"
  add_foreign_key "carts", "users"
  add_foreign_key "order_details", "orders"
  add_foreign_key "orders", "payments"
  add_foreign_key "orders", "users"
  add_foreign_key "product_details", "products"
  add_foreign_key "products", "categories"
end
