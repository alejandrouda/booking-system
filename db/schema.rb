# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_17_074349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.integer "phone"
    t.time "date_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurante_id", null: false
    t.index ["restaurante_id"], name: "index_bookings_on_restaurante_id"
  end

  create_table "client_tags", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_client_tags_on_booking_id"
    t.index ["client_id"], name: "index_client_tags_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.integer "phone"
    t.boolean "no_show"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string "name"
    t.string "plan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "table_tags", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.bigint "table_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_table_tags_on_booking_id"
    t.index ["table_id"], name: "index_table_tags_on_table_id"
  end

  create_table "tables", force: :cascade do |t|
    t.integer "number"
    t.string "section"
    t.integer "min_pax"
    t.integer "max_pax"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sections_id", null: false
    t.index ["sections_id"], name: "index_tables_on_sections_id"
  end

  create_table "user_restaurante_tags", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "restaurante_id", null: false
    t.index ["restaurante_id"], name: "index_user_restaurante_tags_on_restaurante_id"
    t.index ["user_id"], name: "index_user_restaurante_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "restaurantes"
  add_foreign_key "client_tags", "bookings"
  add_foreign_key "client_tags", "clients"
  add_foreign_key "table_tags", "bookings"
  add_foreign_key "table_tags", "tables"
  add_foreign_key "tables", "sections", column: "sections_id"
  add_foreign_key "user_restaurante_tags", "restaurantes"
  add_foreign_key "user_restaurante_tags", "users"
end
