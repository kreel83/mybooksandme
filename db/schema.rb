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

ActiveRecord::Schema.define(version: 2019_11_30_222751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actualreadings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "reading_id", null: false
    t.datetime "begindate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reading_id"], name: "index_actualreadings_on_reading_id"
    t.index ["user_id"], name: "index_actualreadings_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "subcategory"
    t.bigint "googlecategory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["googlecategory_id"], name: "index_categories_on_googlecategory_id"
  end

  create_table "criterialists", force: :cascade do |t|
    t.string "name"
    t.bigint "googlecategory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["googlecategory_id"], name: "index_criterialists_on_googlecategory_id"
  end

  create_table "criterions", force: :cascade do |t|
    t.bigint "criterialist_id", null: false
    t.string "note"
    t.bigint "readinglist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["criterialist_id"], name: "index_criterions_on_criterialist_id"
    t.index ["readinglist_id"], name: "index_criterions_on_readinglist_id"
  end

  create_table "endinglists", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "endings", force: :cascade do |t|
    t.bigint "endinglist_id", null: false
    t.bigint "reading_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["endinglist_id"], name: "index_endings_on_endinglist_id"
    t.index ["reading_id"], name: "index_endings_on_reading_id"
  end

  create_table "googlecategories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "readinglists", force: :cascade do |t|
    t.bigint "reading_id", null: false
    t.datetime "begindate"
    t.datetime "enddate"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reading_id"], name: "index_readinglists_on_reading_id"
    t.index ["user_id"], name: "index_readinglists_on_user_id"
  end

  create_table "readings", force: :cascade do |t|
    t.string "googleid"
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_readings_on_category_id"
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

  add_foreign_key "actualreadings", "readings"
  add_foreign_key "actualreadings", "users"
  add_foreign_key "categories", "googlecategories"
  add_foreign_key "criterialists", "googlecategories"
  add_foreign_key "criterions", "criterialists"
  add_foreign_key "criterions", "readinglists"
  add_foreign_key "endings", "endinglists"
  add_foreign_key "endings", "readings"
  add_foreign_key "readinglists", "readings"
  add_foreign_key "readinglists", "users"
  add_foreign_key "readings", "categories"
end
