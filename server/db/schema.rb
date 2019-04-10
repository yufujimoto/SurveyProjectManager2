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

ActiveRecord::Schema.define(version: 2019_04_10_024118) do

  create_table "consolidations", force: :cascade do |t|
    t.string "uuid"
    t.string "name"
    t.string "geographic_annotation"
    t.string "temporal_annotation"
    t.text "description"
    t.string "flickr_photosetid"
    t.string "project"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fileobjects", force: :cascade do |t|
    t.string "uuid"
    t.string "consolidation"
    t.string "material"
    t.datetime "created_date"
    t.datetime "modified_date"
    t.string "file_name"
    t.string "file_type"
    t.string "alias_name"
    t.string "status"
    t.boolean "make_public"
    t.boolean "is_locked"
    t.string "source"
    t.string "file_operation"
    t.string "operating_application"
    t.string "caption"
    t.text "description"
    t.string "flickr_photoid"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file"
  end

  create_table "projects", force: :cascade do |t|
    t.string "uuid"
    t.string "name"
    t.string "title"
    t.date "begining"
    t.date "ending"
    t.integer "phase"
    t.text "introduction"
    t.text "cause"
    t.string "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "surname"
    t.string "affiliation"
    t.string "username"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
