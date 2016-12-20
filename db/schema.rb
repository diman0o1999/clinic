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

ActiveRecord::Schema.define(version: 20161220210901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departaments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "forms", force: :cascade do |t|
    t.string   "name"
    t.bigint   "telephone"
    t.integer  "filial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medics", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "patronymic"
    t.string   "daywork"
    t.string   "post"
    t.string   "foto"
    t.integer  "filial_id"
    t.integer  "departament_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "about"
    t.integer  "raiting",        default: 0
  end

  create_table "medics_filials", id: false, force: :cascade do |t|
    t.integer  "medic"
    t.integer  "filial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filial"], name: "index_medics_filials_on_filial", using: :btree
    t.index ["medic"], name: "index_medics_filials_on_medic", using: :btree
  end

end
