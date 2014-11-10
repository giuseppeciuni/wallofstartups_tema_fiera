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

ActiveRecord::Schema.define(version: 20141101230940) do

  create_table "categories", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startup_details", force: true do |t|
    t.integer  "startup_id"
    t.string   "startup_name"
    t.string   "logo"
    t.string   "name"
    t.string   "surname"
    t.string   "job_title"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.text     "short_project_description"
    t.text     "one_line_pitch"
    t.text     "business_summary"
    t.text     "customer_problem"
    t.text     "products_and_services"
    t.text     "target_market"
    t.text     "sales_marketing_strategy"
    t.text     "business_model"
    t.text     "competitors"
    t.text     "competitive_advantage"
    t.text     "management_team"
    t.text     "advisory_board"
    t.text     "revenue_model"
    t.text     "break_even_analysis"
    t.text     "previous_investiments"
    t.text     "use_of_funds"
    t.text     "past_significant_milestones"
    t.text     "exit_strategy"
    t.text     "comparable_exit_markets"
    t.text     "value_proposition"
    t.text     "resources_beyond_capital"
    t.text     "additional_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startups", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "video_url"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "video_thumbnail_url"
    t.string   "category"
    t.string   "uniformed_url"
    t.boolean  "approved"
    t.integer  "video_type"
    t.boolean  "in_the_spotlight"
    t.string   "subcategory"
    t.decimal  "funding_need",        precision: 10, scale: 0
    t.string   "city"
    t.string   "state"
    t.string   "province"
    t.string   "country"
    t.string   "industry"
  end

end
