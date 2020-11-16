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

ActiveRecord::Schema.define(version: 2020_11_16_163754) do

  create_table "developer_leads", force: :cascade do |t|
    t.integer "team_lead_id", null: false
    t.integer "developerz_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["developerz_id"], name: "index_developer_leads_on_developerz_id"
    t.index ["team_lead_id"], name: "index_developer_leads_on_team_lead_id"
  end

  create_table "developerzs", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "designation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "managerzs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mile_stones", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.integer "project2_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project2_id"], name: "index_mile_stones_on_project2_id"
  end

  create_table "project2s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "project_developerzs", force: :cascade do |t|
    t.integer "project2_id", null: false
    t.integer "developerz_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["developerz_id"], name: "index_project_developerzs_on_developerz_id"
    t.index ["project2_id"], name: "index_project_developerzs_on_project2_id"
  end

  create_table "project_leads", force: :cascade do |t|
    t.integer "team_lead_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_leads_on_project_id"
    t.index ["team_lead_id"], name: "index_project_leads_on_team_lead_id"
  end

  create_table "project_managerzzs", force: :cascade do |t|
    t.integer "project2_id", null: false
    t.integer "managerz_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["managerz_id"], name: "index_project_managerzzs_on_managerz_id"
    t.index ["project2_id"], name: "index_project_managerzzs_on_project2_id"
  end

  create_table "taskzs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "tasktype"
    t.integer "team_lead_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_taskzs_on_project_id"
    t.index ["team_lead_id"], name: "index_taskzs_on_team_lead_id"
  end

  create_table "team_leads", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "designation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "developer_leads", "developerzs"
  add_foreign_key "developer_leads", "team_leads"
  add_foreign_key "mile_stones", "project2s"
  add_foreign_key "project_developerzs", "developerzs"
  add_foreign_key "project_developerzs", "project2s"
  add_foreign_key "project_leads", "projects"
  add_foreign_key "project_leads", "team_leads"
  add_foreign_key "project_managerzzs", "managerzs"
  add_foreign_key "project_managerzzs", "project2s"
  add_foreign_key "taskzs", "projects"
  add_foreign_key "taskzs", "team_leads"
end
