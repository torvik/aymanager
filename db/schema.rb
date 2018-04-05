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

ActiveRecord::Schema.define(version: 20180405182138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "improvements", force: :cascade do |t|
    t.string "chamado"
    t.text "solicitacao"
    t.date "data_report"
    t.date "data_aprov_req"
    t.date "data_envio_provedor"
    t.integer "horas_orca"
    t.date "data_aprov_orca"
    t.date "data_envio_funci"
    t.date "data_aprov_funci"
    t.date "data_envio_tec"
    t.date "data_aprov_tec"
    t.date "data_fim_constr"
    t.date "data_teste_acei"
    t.date "data_prod"
    t.integer "avanco"
    t.bigint "segment_id"
    t.bigint "system_id"
    t.bigint "type_id"
    t.bigint "priority_id"
    t.bigint "director_id"
    t.bigint "status_id"
    t.bigint "provider_id"
    t.bigint "area_id"
    t.bigint "requester_id"
    t.bigint "responsible_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["area_id"], name: "index_improvements_on_area_id"
    t.index ["director_id"], name: "index_improvements_on_director_id"
    t.index ["priority_id"], name: "index_improvements_on_priority_id"
    t.index ["provider_id"], name: "index_improvements_on_provider_id"
    t.index ["requester_id"], name: "index_improvements_on_requester_id"
    t.index ["responsible_id"], name: "index_improvements_on_responsible_id"
    t.index ["segment_id"], name: "index_improvements_on_segment_id"
    t.index ["status_id"], name: "index_improvements_on_status_id"
    t.index ["system_id"], name: "index_improvements_on_system_id"
    t.index ["type_id"], name: "index_improvements_on_type_id"
    t.index ["user_id"], name: "index_improvements_on_user_id"
  end

  create_table "priorities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requesters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsibles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "segments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "content"
    t.integer "hora_gastas"
    t.bigint "improvements_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["improvements_id"], name: "index_tasks_on_improvements_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "improvements", "areas"
  add_foreign_key "improvements", "directors"
  add_foreign_key "improvements", "priorities"
  add_foreign_key "improvements", "providers"
  add_foreign_key "improvements", "requesters"
  add_foreign_key "improvements", "responsibles"
  add_foreign_key "improvements", "segments"
  add_foreign_key "improvements", "statuses"
  add_foreign_key "improvements", "systems"
  add_foreign_key "improvements", "types"
  add_foreign_key "tasks", "improvements", column: "improvements_id"
  add_foreign_key "tasks", "users"
end
