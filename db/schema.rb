# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_27_022034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodies", force: :cascade do |t|
    t.integer "head_id"
    t.string "product_name"
    t.string "quantity"
    t.integer "format"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "heads", force: :cascade do |t|
    t.date "created_date"
    t.date "ship_date"
    t.integer "Arrival_time"
    t.integer "vehicle"
    t.boolean "unic"
    t.boolean "waiting_place"
    t.string "rain"
    t.string "delivery"
    t.string "delivery_person"
    t.string "delivery_tel"
    t.string "delivery_address"
    t.integer "order_no"
    t.string "construction_name"
    t.boolean "construction_metal"
    t.string "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
