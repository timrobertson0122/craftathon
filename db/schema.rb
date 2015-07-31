# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150731143731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_applications", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "jobhunter_id"
    t.integer  "job_id"
  end

  add_index "job_applications", ["job_id"], name: "index_job_applications_on_job_id", using: :btree
  add_index "job_applications", ["jobhunter_id"], name: "index_job_applications_on_jobhunter_id", using: :btree

  create_table "jobhunters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questionaires", force: :cascade do |t|
    t.string   "company_name"
    t.integer  "size"
    t.integer  "positions"
    t.string   "tech"
    t.string   "actualtech"
    t.text     "tasks"
    t.text     "results"
    t.text     "difference"
    t.text     "ideal"
    t.text     "recruitment"
    t.text     "character"
    t.text     "onboarding"
    t.text     "training"
    t.string   "pay"
    t.string   "location"
    t.string   "parttime"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "job_id"
    t.string   "title"
  end

  add_index "questionaires", ["job_id"], name: "index_questionaires_on_job_id", using: :btree

  add_foreign_key "job_applications", "jobhunters"
  add_foreign_key "job_applications", "jobs"
  add_foreign_key "questionaires", "jobs"
end
