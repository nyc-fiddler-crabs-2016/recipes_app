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

ActiveRecord::Schema.define(version: 20160329020903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "category"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "calories"
    t.float    "fat"
    t.float    "protein"
    t.float    "Carbohydrates"
    t.float    "fiber"
    t.float    "sugars"
    t.float    "water"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.string   "measurement_type"
    t.float    "amount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "recipe_ingredients", ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id", using: :btree
  add_index "recipe_ingredients", ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "description"
    t.integer  "creator_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "recipes", ["creator_id"], name: "index_recipes_on_creator_id", using: :btree

  create_table "saved_recipe_ingredients", force: :cascade do |t|
    t.integer  "saved_recipe_id"
    t.integer  "ingredient_id"
    t.string   "measurement_type"
    t.float    "amount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "saved_recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "saved_recipes", ["user_id"], name: "index_saved_recipes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "email",           null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", using: :btree

  add_foreign_key "recipe_ingredients", "ingredients"
  add_foreign_key "recipe_ingredients", "recipes"
  add_foreign_key "saved_recipes", "users"
end
