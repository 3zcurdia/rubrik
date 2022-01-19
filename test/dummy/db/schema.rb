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

ActiveRecord::Schema.define(version: 2022_01_19_050541) do

  create_table "rubrik_categories", force: :cascade do |t|
    t.integer "rubric_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rubric_id"], name: "index_rubrik_categories_on_rubric_id"
  end

  create_table "rubrik_grades", force: :cascade do |t|
    t.integer "rubric_id", null: false
    t.string "gradeable_type", null: false
    t.integer "gradeable_id", null: false
    t.integer "total_points", default: 0
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gradeable_type", "gradeable_id"], name: "index_rubrik_grades_on_gradeable"
    t.index ["rubric_id"], name: "index_rubrik_grades_on_rubric_id"
  end

  create_table "rubrik_items", force: :cascade do |t|
    t.integer "category_id", null: false
    t.string "name"
    t.text "summary"
    t.integer "points", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_rubrik_items_on_category_id"
  end

  create_table "rubrik_rubrics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "categories_count", default: 0
  end

  create_table "rubrik_tiers", force: :cascade do |t|
    t.integer "grade_id", null: false
    t.integer "category_id", null: false
    t.integer "points"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_rubrik_tiers_on_category_id"
    t.index ["grade_id"], name: "index_rubrik_tiers_on_grade_id"
  end

  add_foreign_key "rubrik_categories", "rubrics"
  add_foreign_key "rubrik_grades", "rubrics"
  add_foreign_key "rubrik_items", "categories"
  add_foreign_key "rubrik_tiers", "categories"
  add_foreign_key "rubrik_tiers", "grades"
end
