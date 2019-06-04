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

ActiveRecord::Schema.define(version: 2019_06_04_212855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "delayed_jobs", id: :serial, force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "departments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.integer "capacity"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "school_id"
    t.index ["school_id"], name: "index_departments_on_school_id"
  end

  create_table "groups", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "school_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_groups_on_school_id"
  end

  create_table "notices", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "school_id"
    t.string "title"
    t.text "details"
    t.bigint "user_id"
    t.date "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_notices_on_school_id"
    t.index ["user_id"], name: "index_notices_on_user_id"
  end

  create_table "parents", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "school_id"
    t.string "guardian_name"
    t.string "first_name"
    t.string "last_name"
    t.string "profession"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_parents_on_school_id"
  end

  create_table "schools", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "state"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "school_id"
    t.uuid "parent_id"
    t.string "first_name"
    t.string "father_name"
    t.string "mother_name"
    t.date "birth_date"
    t.string "religion"
    t.string "email"
    t.date "admission_date"
    t.string "address"
    t.string "phone"
    t.string "register_number"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.index ["parent_id"], name: "index_students_on_parent_id"
    t.index ["school_id"], name: "index_students_on_school_id"
  end

  create_table "subject_types", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.uuid "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "religion"
    t.date "join_date"
    t.string "email"
    t.string "section"
    t.string "address"
    t.string "phone"
    t.date "birth_date"
    t.string "gender"
    t.index ["school_id"], name: "index_teachers_on_school_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.string "username", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.json "tokens"
    t.uuid "school_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["school_id"], name: "index_users_on_school_id"
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "departments", "schools"
  add_foreign_key "groups", "schools"
  add_foreign_key "notices", "schools"
  add_foreign_key "notices", "users"
  add_foreign_key "parents", "schools"
  add_foreign_key "students", "parents"
  add_foreign_key "students", "schools"
  add_foreign_key "teachers", "schools"
  add_foreign_key "users", "schools"
end
