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

ActiveRecord::Schema.define(version: 20170105142533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.text     "text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "departaments", force: :cascade do |t|
    t.string   "departament_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "departaments_medics", force: :cascade do |t|
    t.integer  "medic_id"
    t.integer  "departament_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["medic_id", "departament_id"], name: "index_departaments_medics_on_medic_id_and_departament_id", unique: true, using: :btree
  end

  create_table "diploms", force: :cascade do |t|
    t.string   "file"
    t.integer  "medic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filials", force: :cascade do |t|
    t.string   "filial_name"
    t.string   "metro"
    t.bigint   "telephone"
    t.string   "address"
    t.string   "time_work"
    t.string   "day_work"
    t.string   "telephone_full"
    t.string   "map"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "filials_medics", force: :cascade do |t|
    t.integer  "medic_id"
    t.integer  "filial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medic_id", "filial_id"], name: "index_filials_medics_on_medic_id_and_filial_id", unique: true, using: :btree
  end

  create_table "forms", force: :cascade do |t|
    t.string   "form_name"
    t.bigint   "telephone"
    t.integer  "filial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mark_medics", force: :cascade do |t|
    t.integer  "medic_id"
    t.integer  "patient_id"
    t.integer  "mark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medic_id", "patient_id"], name: "index_mark_medics_on_medic_id_and_patient_id", unique: true, using: :btree
  end

  create_table "medics", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "daywork1"
    t.string   "daywork2"
    t.string   "daywork3"
    t.string   "about"
    t.string   "post1"
    t.string   "post2"
    t.string   "post3"
    t.string   "avatar"
    t.integer  "raiting"
    t.integer  "status_medic", default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "user_id"
    t.bigint   "tel_number"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.string   "price_name"
    t.integer  "price"
    t.integer  "departament_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "medic_id",        default: 32
    t.text     "text_question"
    t.text     "text_answer"
    t.integer  "status_question", default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "text_reviews"
    t.integer  "status_review", default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "role_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "surname"
    t.string   "patronymic"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.integer  "role_id"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

end
