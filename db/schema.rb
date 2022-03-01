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

ActiveRecord::Schema.define(version: 2022_03_01_015654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bodies", force: :cascade do |t|
    t.string "product_name"
    t.string "quantity"
    t.integer "format"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "construction_id"
    t.integer "weight"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "post_code"
    t.string "address"
    t.string "tel"
    t.string "fax"
    t.string "ceo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "constructions", force: :cascade do |t|
    t.string "name"
    t.string "order_no"
    t.string "address"
    t.string "person"
    t.string "tel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "delivery_name"
    t.string "remark"
    t.integer "company_id"
    t.string "image"
  end

  create_table "form_bases", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_product_collections", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "heads", force: :cascade do |t|
    t.date "created_date"
    t.integer "arrival_time"
    t.integer "vehicle"
    t.boolean "unic"
    t.boolean "waiting_place"
    t.string "rain"
    t.string "delivery"
    t.string "delivery_person"
    t.string "delivery_tel"
    t.string "delivery_address"
    t.integer "order_no"
    t.boolean "construction_metal"
    t.string "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "construction_id"
    t.datetime "ship_date"
    t.boolean "on_site"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "date"
    t.string "content"
    t.integer "person_id"
    t.boolean "completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "type"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "company_id"
    t.string "position"
    t.string "handy_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shippeds", force: :cascade do |t|
    t.integer "head_id"
    t.integer "body_id"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "department"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
