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

ActiveRecord::Schema[7.1].define(version: 2024_05_26_033513) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alignments", force: :cascade do |t|
    t.string "name"
    t.bigint "x_alignment_id"
    t.bigint "y_alignment_id"
    t.string "descriptors", default: [], array: true
    t.string "titles", default: [], array: true
    t.string "tenets", default: [], array: true
    t.index ["x_alignment_id"], name: "index_alignments_on_x_alignment_id"
    t.index ["y_alignment_id"], name: "index_alignments_on_y_alignment_id"
  end

  create_table "domains", force: :cascade do |t|
    t.string "name"
    t.string "descriptors", default: [], array: true
    t.string "titles", default: [], array: true
    t.string "tenets", default: [], array: true
    t.string "themes", default: [], array: true
  end

  create_table "generals", force: :cascade do |t|
    t.string "names", default: [], array: true
    t.string "themes", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gods", force: :cascade do |t|
    t.string "name"
    t.string "epitaph"
    t.string "tenets", default: [], array: true
    t.string "themes", default: [], array: true
    t.bigint "alignment_id", null: false
    t.bigint "domain_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "random_name"
    t.boolean "random_alignment"
    t.boolean "random_domain"
    t.string "prompt"
    t.string "img_prompt"
    t.index ["alignment_id"], name: "index_gods_on_alignment_id"
    t.index ["domain_id"], name: "index_gods_on_domain_id"
  end

  create_table "x_alignments", force: :cascade do |t|
    t.string "name"
    t.string "descriptors", default: [], array: true
    t.string "titles", default: [], array: true
    t.string "tenets", default: [], array: true
    t.string "themes", default: [], array: true
  end

  create_table "y_alignments", force: :cascade do |t|
    t.string "name"
    t.string "descriptors", default: [], array: true
    t.string "titles", default: [], array: true
    t.string "tenets", default: [], array: true
    t.string "themes", default: [], array: true
  end

  add_foreign_key "alignments", "x_alignments"
  add_foreign_key "alignments", "y_alignments"
  add_foreign_key "gods", "alignments"
  add_foreign_key "gods", "domains"
end
