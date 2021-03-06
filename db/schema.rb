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

ActiveRecord::Schema.define(version: 20170221012022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string   "first_name",        limit: 100
    t.string   "last_name",         limit: 100
    t.string   "company"
    t.string   "phone_number",      limit: 30
    t.string   "address"
    t.string   "address_apartment", limit: 40
    t.integer  "order_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["order_id"], name: "index_deliveries_on_order_id", using: :btree
  end

  create_table "extras", force: :cascade do |t|
    t.string   "rus_title"
    t.text     "description"
    t.decimal  "price"
    t.integer  "quantity",    default: 1
    t.integer  "order_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["order_id"], name: "index_extras_on_order_id", using: :btree
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["cart_id"], name: "index_line_items_on_cart_id", using: :btree
    t.index ["order_id"], name: "index_line_items_on_order_id", using: :btree
    t.index ["product_id"], name: "index_line_items_on_product_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.string   "email"
    t.string   "reason_sending"
    t.string   "note_from"
    t.string   "note_to"
    t.text     "note"
    t.text     "special_instruction"
    t.integer  "order_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["order_id"], name: "index_notes_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "pay_type"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_payments_on_order_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "rus_title"
    t.text     "description"
    t.decimal  "price"
    t.string   "image_url"
    t.string   "image_url_cart"
    t.string   "image_url_cart_small"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "whens", force: :cascade do |t|
    t.string   "date"
    t.string   "time"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_whens_on_order_id", using: :btree
  end

end
