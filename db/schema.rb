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

ActiveRecord::Schema.define(version: 20161227133409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departaments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departaments_medics", id: false, force: :cascade do |t|
    t.integer  "medic_id"
    t.integer  "departament_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["departament_id"], role_name: "index_departaments_medics_on_departament_id", using: :btree
    t.index ["medic_id"], role_name: "index_departaments_medics_on_medic_id", using: :btree
  end

  create_table "diploms", force: :cascade do |t|
    t.string   "file"
    t.integer  "medic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filials", force: :cascade do |t|
    t.string   "name"
    t.string   "metro"
    t.bigint   "telephone"
    t.string   "address"
    t.string   "time_work"
    t.string   "day_work"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "telephone_full"
    t.string   "map"
  end

  create_table "filials_medics", id: false, force: :cascade do |t|
    t.integer  "medic_id"
    t.integer  "filial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filial_id"], role_name: "index_filials_medics_on_filial_id", using: :btree
    t.index ["medic_id"], role_name: "index_filials_medics_on_medic_id", using: :btree
  end

  create_table "forms", force: :cascade do |t|
    t.string   "name"
    t.bigint   "telephone"
    t.integer  "filial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medics", force: :cascade do |t|
    t.string   "daywork1"
    t.string   "post1"
    t.string   "foto"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "about"
    t.integer  "raiting",    default: 0
    t.string   "post2"
    t.string   "post3"
    t.string   "daywork2"
    t.string   "daywork3"
    t.integer  "user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "user_id"
    t.bigint   "tel_number"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "departament_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.integer  "role_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "surname"
    t.string   "patronymic"
    t.string   "name"
    t.index ["email"], role_name: "index_users_on_email", using: :btree
  end

end
