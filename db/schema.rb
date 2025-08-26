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

ActiveRecord::Schema[8.0].define(version: 2025_08_24_030442) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "bancos", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "direccion", null: false
    t.decimal "latitud", precision: 10, scale: 8, null: false
    t.decimal "longitud", precision: 11, scale: 8, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["latitud", "longitud"], name: "index_bancos_on_latitud_and_longitud"
    t.index ["nombre"], name: "index_bancos_on_nombre"
  end
end
