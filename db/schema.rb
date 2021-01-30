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

ActiveRecord::Schema.define(version: 2020_01_29_215136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "answer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["answer_id"], name: "index_answer_likes_on_answer_id"
    t.index ["user_id"], name: "index_answer_likes_on_user_id"
  end

  create_table "answers", force: :cascade do |t|
    t.string "text"
    t.bigint "user_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "photo_url"
    t.bigint "resort_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resort_id"], name: "index_photos_on_resort_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "text"
    t.bigint "user_id", null: false
    t.bigint "resort_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resort_id"], name: "index_questions_on_resort_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "short_desc"
    t.string "long_desc"
    t.integer "price"
    t.float "long"
    t.float "lat"
    t.string "zipcode"
    t.string "region"
    t.string "state"
    t.date "open_date"
    t.date "close_date"
    t.integer "snowfall"
    t.integer "vertical"
    t.integer "summit"
    t.integer "acres"
    t.integer "runs"
    t.integer "lifts"
    t.integer "green"
    t.integer "blue"
    t.integer "black"
    t.integer "double_black"
    t.integer "terrain_parks"
    t.boolean "epic"
    t.boolean "ikon"
    t.boolean "beginner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "review_likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "review_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["review_id"], name: "index_review_likes_on_review_id"
    t.index ["user_id"], name: "index_review_likes_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "text"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "resort_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resort_id"], name: "index_reviews_on_resort_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "saved_resorts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resort_id", null: false
    t.string "save_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resort_id"], name: "index_saved_resorts_on_resort_id"
    t.index ["user_id"], name: "index_saved_resorts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.boolean "skier"
    t.string "level"
    t.string "password_digest"
  end

  add_foreign_key "answer_likes", "answers"
  add_foreign_key "answer_likes", "users"
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "photos", "resorts"
  add_foreign_key "questions", "resorts"
  add_foreign_key "questions", "users"
  add_foreign_key "review_likes", "reviews"
  add_foreign_key "review_likes", "users"
  add_foreign_key "reviews", "resorts"
  add_foreign_key "reviews", "users"
  add_foreign_key "saved_resorts", "resorts"
  add_foreign_key "saved_resorts", "users"
end
