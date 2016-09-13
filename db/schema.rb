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

ActiveRecord::Schema.define(version: 20160912191256) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "title"
    t.string   "location"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
    t.string   "contact"
    t.index ["company_id"], name: "index_positions_on_company_id"
  end

  create_table "positions_technologies", id: false, force: :cascade do |t|
    t.integer "position_id",   null: false
    t.integer "technology_id", null: false
    t.index ["position_id"], name: "index_positions_technologies_on_position_id"
    t.index ["technology_id"], name: "index_positions_technologies_on_technology_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
