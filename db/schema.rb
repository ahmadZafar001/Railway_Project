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

ActiveRecord::Schema.define(version: 20181207181827) do

  create_table "compartments", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fares", force: :cascade do |t|
    t.integer  "train_compartment_id"
    t.integer  "route_id"
    t.integer  "amount"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "fares", ["route_id"], name: "index_fares_on_route_id"
  add_index "fares", ["train_compartment_id"], name: "index_fares_on_train_compartment_id"

  create_table "journeys", force: :cascade do |t|
    t.integer  "train_id"
    t.integer  "route_id"
    t.integer  "staff_id"
    t.integer  "pass_count"
    t.datetime "dep_time"
    t.datetime "arr_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "journeys", ["route_id"], name: "index_journeys_on_route_id"
  add_index "journeys", ["staff_id"], name: "index_journeys_on_staff_id"
  add_index "journeys", ["train_id"], name: "index_journeys_on_train_id"

  create_table "passenger_contacts", force: :cascade do |t|
    t.string   "phone_number"
    t.integer  "passenger_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "passenger_contacts", ["passenger_id"], name: "index_passenger_contacts_on_passenger_id"

  create_table "passengers", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "age"
    t.string   "gender"
    t.string   "cnic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "passenger_id"
    t.integer  "train_compartment_id"
    t.integer  "seat_number"
    t.datetime "reservation_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "reservations", ["passenger_id"], name: "index_reservations_on_passenger_id"
  add_index "reservations", ["train_compartment_id"], name: "index_reservations_on_train_compartment_id"

  create_table "routes", force: :cascade do |t|
    t.integer  "source_id"
    t.integer  "destination_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "staff_contacts", force: :cascade do |t|
    t.string   "phone_number"
    t.text     "address"
    t.integer  "staff_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "staff_contacts", ["staff_id"], name: "index_staff_contacts_on_staff_id"

  create_table "staffs", force: :cascade do |t|
    t.string   "cnic"
    t.string   "fname"
    t.string   "lname"
    t.string   "gender"
    t.integer  "age"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "passenger_id"
    t.integer  "train_compartment_id"
    t.integer  "route_id"
    t.integer  "fare"
    t.integer  "seat_number"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "discount_id"
    t.float    "final_fare"
  end

  add_index "tickets", ["discount_id"], name: "index_tickets_on_discount_id"
  add_index "tickets", ["passenger_id"], name: "index_tickets_on_passenger_id"
  add_index "tickets", ["route_id"], name: "index_tickets_on_route_id"
  add_index "tickets", ["train_compartment_id"], name: "index_tickets_on_train_compartment_id"

  create_table "train_compartments", force: :cascade do |t|
    t.integer  "train_id"
    t.integer  "compartment_id"
    t.integer  "available_seats"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "train_compartments", ["compartment_id"], name: "index_train_compartments_on_compartment_id"
  add_index "train_compartments", ["train_id"], name: "index_train_compartments_on_train_id"

  create_table "trains", force: :cascade do |t|
    t.integer  "staff_id"
    t.string   "name"
    t.integer  "train_type"
    t.boolean  "availibility", default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "trains", ["staff_id"], name: "index_trains_on_staff_id"

end
