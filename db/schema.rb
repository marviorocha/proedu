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

ActiveRecord::Schema.define(version: 20180305210652) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "doc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "publishi_on"
    t.integer "curse_id"
    t.datetime "publish_on"
    t.integer "days"
    t.index ["curse_id"], name: "index_contents_on_curse_id"
  end

  create_table "curses", force: :cascade do |t|
    t.string "title"
    t.string "descricao"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.index ["category_id"], name: "index_curses_on_category_id"
  end

  create_table "curses_users", id: false, force: :cascade do |t|
    t.integer "curse_id", null: false
    t.integer "user_id", null: false
    t.index ["curse_id", "user_id"], name: "index_curses_users_on_curse_id_and_user_id"
    t.index ["user_id", "curse_id"], name: "index_curses_users_on_user_id_and_curse_id"
  end

  create_table "messagers", force: :cascade do |t|
    t.string "subject"
    t.text "body"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messagers_on_user_id"
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
    t.boolean "superadmin_role", default: false
    t.boolean "teacher_role", default: false
    t.boolean "studant_role", default: true
    t.string "name"
    t.string "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
