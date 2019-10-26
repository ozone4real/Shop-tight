# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_191_022_175_515) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'carts', force: :cascade do |t|
    t.bigint 'product_detail_id'
    t.bigint 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'quantity', default: 1
    t.index %w[product_detail_id user_id], name: 'index_carts_on_product_detail_id_and_user_id', unique: true
    t.index ['product_detail_id'], name: 'index_carts_on_product_detail_id'
    t.index ['user_id'], name: 'index_carts_on_user_id'
  end

  create_table 'categories', force: :cascade do |t|
    t.string 'category_name'
    t.string 'category_description'
    t.string 'picture'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'url_key'
    t.index ['url_key'], name: 'index_categories_on_url_key', unique: true
  end

  create_table 'order_details', force: :cascade do |t|
    t.integer 'quantity'
    t.integer 'total_price'
    t.integer 'status', default: 0
    t.datetime 'bill_date'
    t.datetime 'ship_date'
    t.float 'sales_tax'
    t.bigint 'order_id'
    t.integer 'shipper_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'product_detail_id'
    t.string 'location'
    t.index ['order_id'], name: 'index_order_details_on_order_id'
    t.index ['product_detail_id'], name: 'index_order_details_on_product_detail_id'
  end

  create_table 'orders', force: :cascade do |t|
    t.integer 'order_number'
    t.datetime 'payment_date'
    t.bigint 'user_id'
    t.bigint 'payment_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'amount_payable'
    t.boolean 'payment_made'
    t.index ['payment_id'], name: 'index_orders_on_payment_id'
    t.index ['user_id'], name: 'index_orders_on_user_id'
  end

  create_table 'payments', force: :cascade do |t|
    t.string 'payment_type'
    t.boolean 'allowed'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'picture'
    t.text 'description'
  end

  create_table 'product_details', force: :cascade do |t|
    t.string 'size'
    t.string 'color'
    t.integer 'price'
    t.bigint 'product_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.boolean 'product_available', default: true
    t.integer 'quantity_in_stock'
    t.integer 'quantity_sold', default: 0
    t.string 'url_key'
    t.index ['product_id'], name: 'index_product_details_on_product_id'
    t.index ['url_key'], name: 'index_product_details_on_url_key', unique: true
  end

  create_table 'products', force: :cascade do |t|
    t.string 'product_name'
    t.string 'product_description'
    t.float 'discount', default: 0.0
    t.string 'picture'
    t.float 'unit_weight'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id'
    t.string 'brand'
    t.string 'url_key'
    t.integer 'product_size'
    t.integer 'shipping_fee'
    t.bigint 'sub_category_id'
    t.bigint 'category_id'
    t.integer 'times_viewed', default: 0
    t.index ['category_id'], name: 'index_products_on_category_id'
    t.index ['sub_category_id'], name: 'index_products_on_sub_category_id'
    t.index ['url_key'], name: 'index_products_on_url_key', unique: true
    t.index ['user_id'], name: 'index_products_on_user_id'
  end

  create_table 'recently_viewed_products', force: :cascade do |t|
    t.bigint 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'product_id'
    t.index ['product_id'], name: 'index_recently_viewed_products_on_product_id'
    t.index ['user_id'], name: 'index_recently_viewed_products_on_user_id'
  end

  create_table 'sub_categories', force: :cascade do |t|
    t.bigint 'category_id'
    t.string 'category_name'
    t.string 'category_description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'picture'
    t.string 'url_key'
    t.index ['category_id'], name: 'index_sub_categories_on_category_id'
    t.index ['url_key'], name: 'index_sub_categories_on_url_key', unique: true
  end

  create_table 'users', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'email'
    t.string 'password_digest'
    t.string 'address'
    t.string 'city'
    t.string 'state'
    t.string 'postal_code'
    t.string 'country'
    t.string 'phone'
    t.boolean 'is_admin', default: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.boolean 'verified', default: false
    t.index ['email'], name: 'index_users_on_email', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'carts', 'product_details'
  add_foreign_key 'carts', 'users'
  add_foreign_key 'order_details', 'orders'
  add_foreign_key 'order_details', 'product_details'
  add_foreign_key 'orders', 'payments'
  add_foreign_key 'orders', 'users'
  add_foreign_key 'product_details', 'products'
  add_foreign_key 'products', 'categories'
  add_foreign_key 'products', 'sub_categories'
  add_foreign_key 'recently_viewed_products', 'users'
  add_foreign_key 'sub_categories', 'categories'
end
