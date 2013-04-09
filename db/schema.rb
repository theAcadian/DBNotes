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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130407082907) do

  create_table "comments", :force => true do |t|
    t.integer  "note_id"
    t.text     "comment_text"
    t.string   "author"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "notes", :force => true do |t|
    t.string   "table_name"
    t.string   "column_name"
    t.text     "note_text"
    t.string   "author"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "table1s", :force => true do |t|
    t.string   "col1"
    t.string   "col2"
    t.string   "col3"
    t.string   "col4"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "table2s", :force => true do |t|
    t.string   "col1"
    t.string   "col2"
    t.string   "col3"
    t.string   "col4"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "table3s", :force => true do |t|
    t.string   "col1"
    t.string   "col2"
    t.string   "col3"
    t.string   "col4"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "table4s", :force => true do |t|
    t.string   "col1"
    t.string   "col2"
    t.string   "col3"
    t.string   "col4"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "table5s", :force => true do |t|
    t.string   "col1"
    t.string   "col2"
    t.string   "col3"
    t.string   "col4"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "table6s", :force => true do |t|
    t.string   "col1"
    t.string   "col2"
    t.string   "col3"
    t.string   "col4"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "table7s", :force => true do |t|
    t.string   "col1"
    t.string   "col2"
    t.string   "col3"
    t.string   "col4"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
