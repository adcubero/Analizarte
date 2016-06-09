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

ActiveRecord::Schema.define(version: 20160609075654) do

  create_table "answer_paragraphs", force: :cascade do |t|
    t.integer  "option_id"
    t.integer  "evaluation_id"
    t.integer  "sentence_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "answer_paragraphs", ["evaluation_id"], name: "index_answer_paragraphs_on_evaluation_id"
  add_index "answer_paragraphs", ["option_id"], name: "index_answer_paragraphs_on_option_id"
  add_index "answer_paragraphs", ["sentence_id"], name: "index_answer_paragraphs_on_sentence_id"

  create_table "evaluations", force: :cascade do |t|
    t.integer  "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "evaluations", ["exam_id"], name: "index_evaluations_on_exam_id"

  create_table "exams", force: :cascade do |t|
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "multi_options", force: :cascade do |t|
    t.string   "option"
    t.integer  "multiple_choice_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "multi_options", ["multiple_choice_id"], name: "index_multi_options_on_multiple_choice_id"

  create_table "multiple_choices", force: :cascade do |t|
    t.string   "question"
    t.integer  "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "multiple_choices", ["exam_id"], name: "index_multiple_choices_on_exam_id"

  create_table "options", force: :cascade do |t|
    t.integer  "sentence_id"
    t.string   "option"
    t.string   "correct"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "options", ["sentence_id"], name: "index_options_on_sentence_id"

  create_table "paragrahs", force: :cascade do |t|
    t.integer  "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "paragrahs", ["exam_id"], name: "index_paragrahs_on_exam_id"

  create_table "sentences", force: :cascade do |t|
    t.integer  "paragrah_id"
    t.string   "sentence"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sentences", ["paragrah_id"], name: "index_sentences_on_paragrah_id"

end
