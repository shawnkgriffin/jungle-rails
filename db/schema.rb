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

ActiveRecord::Schema.define(version: 20171110222437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "item_price_cents"
    t.integer  "total_price_cents"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree
  add_index "line_items", ["product_id"], name: "index_line_items_on_product_id", using: :btree

  create_table "maps", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.integer  "user_id"
  end

  create_table "maps_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "map_id"
    t.boolean "favourite"
    t.boolean "changed"
  end

  create_table "migrations", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "batch"
    t.datetime "migration_time"
  end

  create_table "migrations_lock", id: false, force: :cascade do |t|
    t.integer "is_locked"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "total_cents"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "stripe_charge_id"
    t.string   "email"
  end

  create_table "pins", force: :cascade do |t|
    t.string   "latitude",    limit: 255
    t.string   "longitude",   limit: 255
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.string   "image",       limit: 255
    t.string   "url",         limit: 255
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "version"
    t.integer  "type_id"
    t.integer  "map_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.integer  "price_cents"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "user_id"
    t.string   "description"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "icon", limit: 255
    t.string "type", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "line_items", "orders"
  add_foreign_key "line_items", "products"
  add_foreign_key "products", "categories"
end
