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

ActiveRecord::Schema[7.1].define(version: 2024_01_24_090418) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "houses", force: :cascade do |t|
    t.string "type"
    t.string "floor"
    t.integer "price"
    t.string "house_number"
    t.string "image_url_1"
    t.string "image_url_2"
    t.string "image_url_3"
    t.string "image_url_4"
    t.string "image_url_5"
    t.boolean "has_kitchen"
    t.boolean "has_bathroom"
    t.boolean "has_wifi"
    t.boolean "has_bedroom"
    t.boolean "vacant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string "name"
    t.string "house_number"
    t.string "house_type"
    t.string "phone_number"
    t.integer "id_number"
    t.string "occupation"
    t.integer "rent"
    t.string "next_of_kin_name"
    t.string "next_of_kin_phone"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
