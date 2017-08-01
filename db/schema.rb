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

ActiveRecord::Schema.define(version: 20170801200911) do

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hot_lists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "First_Name"
    t.string "Last_Name"
    t.string "Resource_Title"
    t.text "Resource_Summary"
    t.string "Resource_Phone"
    t.string "Resource_Email"
    t.string "Years_Exp"
    t.string "Main_Skill"
    t.string "Resource_Trade"
    t.string "Employment_Authorization"
    t.string "Resource_Location"
    t.text "Resource_Skill"
    t.string "Relocation_Ok"
    t.text "Resource_Resume"
    t.string "Availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.boolean "resource_active"
  end

  create_table "job_applies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "job_post_id"
    t.bigint "hot_list_id"
  end

  create_table "job_posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Job_Title"
    t.string "Job_Location"
    t.string "Job_Type"
    t.string "Job_Rate"
    t.string "Experience_Required"
    t.string "Skills_Required"
    t.string "Work_Auth"
    t.date "Join_Date"
    t.string "Duration"
    t.boolean "Extendable"
    t.string "Interview_Mode"
    t.string "Required_Qualification"
    t.string "Contact_Email"
    t.string "Contact_Phone"
    t.string "Resource_Location"
    t.string "Availability"
    t.string "Contract_Type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.boolean "private_post"
    t.text "job_description"
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "First_Name"
    t.string "Last_Name"
    t.string "Organization_Name"
    t.string "Organization_Email"
    t.string "Organization_Phone"
    t.string "Organization_Address"
    t.string "Organization_City"
    t.string "Organization_Zip"
    t.string "Organization_State"
    t.string "Organization_Country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
