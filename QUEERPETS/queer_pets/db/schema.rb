# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160103213217) do

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.integer  "shelter_id"
  end

  add_index "animals", ["client_id"], name: "index_animals_on_client_id"
  add_index "animals", ["shelter_id"], name: "index_animals_on_shelter_id"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "animal_id"
    t.integer  "shelter_id"
  end

  add_index "clients", ["animal_id"], name: "index_clients_on_animal_id"
  add_index "clients", ["shelter_id"], name: "index_clients_on_shelter_id"

  create_table "shelters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "animal_id"
    t.integer  "client_id"
  end

  add_index "shelters", ["animal_id"], name: "index_shelters_on_animal_id"
  add_index "shelters", ["client_id"], name: "index_shelters_on_client_id"

end
