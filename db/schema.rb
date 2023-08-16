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

ActiveRecord::Schema[7.0].define(version: 2023_08_16_173029) do
  create_table "user_accounts", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_types_id", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.date "data_of_birth", null: false
    t.string "gender", limit: 1, null: false
    t.boolean "is_active", default: true
    t.string "contact_number", null: false
    t.boolean "sms_notification_active"
    t.boolean "email_notification_active"
    t.string "user_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_types_id"], name: "index_user_accounts_on_user_types_id"
  end

  create_table "user_types", charset: "utf8mb4", force: :cascade do |t|
    t.string "type", limit: 20
  end

  add_foreign_key "user_accounts", "user_types", column: "user_types_id"
end
