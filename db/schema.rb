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

ActiveRecord::Schema.define(version: 2020_09_27_005255) do

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.date "bithdate"
    t.integer "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.string "sprite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "kind2"
  end

  create_table "pokemons_teams", id: false, force: :cascade do |t|
    t.integer "team_id", null: false
    t.integer "pokemon_id", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "coach_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_teams_on_coach_id"
  end

  add_foreign_key "teams", "coaches"
end
