# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100203194411) do

  create_table "buildings", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.integer  "student_id"
    t.integer  "instructor_id"
    t.integer  "room_id"
    t.integer  "semester_id"
    t.integer  "section_no"
    t.string   "code"
    t.string   "name"
    t.string   "description"
    t.time     "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_instructors", :id => false, :force => true do |t|
    t.integer  "course_id"
    t.integer  "instructor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_students", :id => false, :force => true do |t|
    t.integer  "course_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", :force => true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.string   "name"
    t.date     "dob"
    t.string   "address"
    t.string   "department"
    t.integer  "no_course_teach"
    t.integer  "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.integer  "building_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", :force => true do |t|
    t.string   "name"
    t.date     "st_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.string   "name"
    t.date     "dob"
    t.string   "address"
    t.string   "st_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "u_name"
    t.string   "password"
    t.string   "email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
