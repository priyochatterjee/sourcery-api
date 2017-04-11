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

ActiveRecord::Schema.define(version: 20170411032509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.text     "creator"
    t.text     "street_address"
    t.text     "city"
    t.text     "state"
    t.text     "country"
    t.text     "ethereum_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.decimal  "lat"
    t.decimal  "lng"
    t.string   "zipcode"
  end

  create_table "lots", force: :cascade do |t|
    t.string   "uid"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_lots_on_product_id", using: :btree
    t.index ["uid"], name: "index_lots_on_uid", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "lots", "products"
end
