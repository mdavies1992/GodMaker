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

ActiveRecord::Schema[7.1].define(version: 2024_06_18_072500) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

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

  create_table "artifacts", force: :cascade do |t|
    t.string "name"
    t.bigint "god_id"
    t.bigint "type_id"
    t.text "quest_one"
    t.text "quest_two"
    t.text "quest_three"
    t.text "ability_one"
    t.text "ability_two"
    t.text "ability_three"
    t.index ["god_id"], name: "index_artifacts_on_god_id"
    t.index ["type_id"], name: "index_artifacts_on_type_id"
  end

  create_table "domains", force: :cascade do |t|
    t.string "name"
    t.string "descriptors", default: [], array: true
    t.string "titles", default: [], array: true
    t.string "tenets", default: [], array: true
    t.string "themes", default: [], array: true
    t.string "ability_one", default: [], array: true
    t.string "ability_two", default: [], array: true
    t.string "ability_two_weapon", default: [], array: true
    t.string "ability_two_armor", default: [], array: true
    t.string "ability_three", default: [], array: true
    t.string "ability_three_weapon", default: [], array: true
    t.string "ability_three_armor", default: [], array: true
    t.string "quest_two", default: [], array: true
    t.string "quest_three", default: [], array: true
  end

  create_table "generals", force: :cascade do |t|
    t.string "names", default: [], array: true
    t.string "themes", default: [], array: true
    t.string "descriptions", default: [], array: true
    t.string "titles", default: [], array: true
    t.string "minorquests", default: [], array: true
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
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "random_name"
    t.boolean "random_alignment"
    t.boolean "random_domain"
    t.string "prompt"
    t.string "img_prompt"
    t.text "description"
    t.index ["alignment_id"], name: "index_gods_on_alignment_id"
    t.index ["domain_id"], name: "index_gods_on_domain_id"
    t.index ["user_id"], name: "index_gods_on_user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "titles", default: [], array: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "alignments", "x_alignments"
  add_foreign_key "alignments", "y_alignments"
  add_foreign_key "artifacts", "gods"
  add_foreign_key "artifacts", "types"
  add_foreign_key "gods", "alignments"
  add_foreign_key "gods", "domains"
  add_foreign_key "gods", "users"
end
