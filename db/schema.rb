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

ActiveRecord::Schema.define(:version => 20121202055425) do

  create_table "confs", :force => true do |t|
    t.string   "name"
    t.string   "subtitle"
    t.string   "twitter"
    t.string   "registration_url"
    t.string   "registration_success_url"
    t.string   "registration_failure_url"
    t.string   "theme"
    t.integer  "year"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.integer  "location_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "episodes", :force => true do |t|
    t.string   "authors"
    t.string   "duration"
    t.string   "enclosure_length"
    t.integer  "episode"
    t.string   "itunes_summary"
    t.string   "keywords"
    t.datetime "published_at"
    t.integer  "season"
    t.string   "subtitle"
    t.string   "summary"
    t.string   "title"
    t.string   "url"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "labs", :force => true do |t|
    t.string   "your_name"
    t.string   "your_email"
    t.string   "your_phone"
    t.string   "your_twitter"
    t.string   "project_twitter"
    t.string   "project_budget"
    t.string   "project_title"
    t.text     "your_bio"
    t.text     "project_description"
    t.date     "project_starts_on"
    t.date     "project_ends_on"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "links", :force => true do |t|
    t.integer  "conf_id"
    t.integer  "talk_id"
    t.string   "title"
    t.string   "subtitle"
    t.string   "url"
    t.string   "author"
    t.text     "snippet"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "extended_address"
    t.integer  "region_id"
    t.string   "locality"
    t.string   "postal_code"
    t.integer  "country_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "slug"
    t.text     "bio"
    t.boolean  "staff"
    t.boolean  "organizer"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people_websites", :id => false, :force => true do |t|
    t.integer "person_id"
    t.integer "website_id"
  end

  create_table "photos", :force => true do |t|
    t.integer  "conf_id"
    t.integer  "talk_id"
    t.text     "caption"
    t.string   "photographer"
    t.string   "url"
    t.string   "canonical_url"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.integer  "country_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "speakings", :force => true do |t|
    t.integer  "talk_id"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "talks", :force => true do |t|
    t.integer  "conf_id"
    t.string   "title"
    t.string   "subtitle"
    t.string   "slug"
    t.text     "description"
    t.boolean  "accepted"
    t.boolean  "keynote"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tweets", :force => true do |t|
    t.integer  "conf_id"
    t.integer  "talk_id"
    t.string   "url"
    t.string   "author"
    t.string   "twitter"
    t.text     "content"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "videos", :force => true do |t|
    t.integer  "conf_id"
    t.integer  "talk_id"
    t.text     "caption"
    t.string   "videographer"
    t.string   "ogv"
    t.string   "mp4"
    t.string   "youtube"
    t.string   "canonical_url"
    t.string   "poster_frame_url"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "websites", :force => true do |t|
    t.string   "url"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
