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

ActiveRecord::Schema.define(version: 2021_02_24_103257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "links", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.text "coment"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_links_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "pfl_text"
    t.string "icon_image"
    t.string "header_image"
    t.string "background_color"
    t.string "twitter_id_1"
    t.string "twitter_id_2"
    t.string "twitter_id_3"
    t.string "twitter_comment_1"
    t.string "twitter_comment_2"
    t.string "twitter_comment_3"
    t.string "twitter_outsidecolor"
    t.string "twitter_insidecolor"
    t.string "instagram_id_1"
    t.string "instagram_id_2"
    t.string "instagram_id_3"
    t.string "instagram_comment_1"
    t.string "instagram_comment_2"
    t.string "instagram_comment_3"
    t.string "instagram_outsidecolor"
    t.string "instagram_insidecolor"
    t.string "facebook_id_1"
    t.string "facebook_id_2"
    t.string "facebook_id_3"
    t.string "facebook_comment_1"
    t.string "facebook_comment_2"
    t.string "facebook_comment_3"
    t.string "facebook_outsidecolor"
    t.string "facebook_insidecolor"
    t.string "youtube_id_1"
    t.string "youtube_id_2"
    t.string "youtube_id_3"
    t.string "youtube_comment_1"
    t.string "youtube_comment_2"
    t.string "youtube_comment_3"
    t.string "youtube_outsidecolor"
    t.string "youtube_insidecolor"
    t.string "tiktok_id_1"
    t.string "tiktok_id_2"
    t.string "tiktok_id_3"
    t.string "tiktok_comment_1"
    t.string "tiktok_comment_2"
    t.string "tiktok_comment_3"
    t.string "tiktok_outsidecolor"
    t.string "tiktok_insidecolor"
    t.string "sns_icons_clor"
    t.string "sns_icons_color"
    t.string "font_color"
    t.string "font_family"
    t.string "link_background_color"
    t.string "link_font_color"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "links", "users"
end
