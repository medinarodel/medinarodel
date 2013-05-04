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

ActiveRecord::Schema.define(:version => 20130504140456) do

  create_table "account_owners", :force => true do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "account_owners", ["account_id"], :name => "index_account_owners_on_account_id"
  add_index "account_owners", ["user_id"], :name => "index_account_owners_on_user_id"

  create_table "accounts", :force => true do |t|
    t.string   "name",                                 :null => false
    t.text     "notes"
    t.string   "status"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "corporate_name"
    t.string   "corporate_address"
    t.string   "email"
    t.string   "phone_number"
    t.string   "website"
    t.boolean  "is_active",          :default => true
  end

  create_table "budgets", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "category_id"
    t.decimal  "amount",        :precision => 15, :scale => 2
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.date     "end_date"
    t.date     "start_date"
  end

  add_index "budgets", ["category_id"], :name => "index_budgets_on_category_id"
  add_index "budgets", ["restaurant_id"], :name => "index_budgets_on_restaurant_id"

  create_table "categories", :force => true do |t|
    t.string   "name",          :default => "",        :null => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "ancestry"
    t.string   "kind",          :default => "invoice", :null => false
    t.boolean  "parent_flag",   :default => false,     :null => false
    t.string   "quickbook_id"
    t.string   "manager_level", :default => "",        :null => false
  end

  add_index "categories", ["ancestry"], :name => "index_categories_on_ancestry"

  create_table "comments", :force => true do |t|
    t.integer  "invoice_id"
    t.integer  "user_id"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "file_groups", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "invoice_id"
    t.integer  "restaurant_id"
  end

  add_index "file_groups", ["invoice_id"], :name => "index_file_groups_on_invoice_id"
  add_index "file_groups", ["restaurant_id"], :name => "index_file_groups_on_restaurant_id"

  create_table "invoice_categories", :force => true do |t|
    t.integer  "category_id"
    t.integer  "invoice_id"
    t.decimal  "amount"
    t.decimal  "credit"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "level"
    t.string   "ancestry"
  end

  add_index "invoice_categories", ["ancestry"], :name => "index_invoice_categories_on_ancestry"
  add_index "invoice_categories", ["category_id"], :name => "index_invoice_categories_on_category_id"
  add_index "invoice_categories", ["invoice_id"], :name => "index_invoice_categories_on_invoice_id"

  create_table "invoice_files", :force => true do |t|
    t.integer  "invoice_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "file_group_id"
    t.integer  "user_id"
    t.integer  "degree",            :default => 0, :null => false
  end

  create_table "invoices", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.integer  "purveyor_id"
    t.date     "invoice_date"
    t.string   "invoice_number",                                :default => "",     :null => false
    t.decimal  "amount",         :precision => 15, :scale => 2
    t.decimal  "credit",         :precision => 15, :scale => 2
    t.text     "notes",                                         :default => "",     :null => false
    t.boolean  "flag",                                          :default => false,  :null => false
    t.datetime "created_at",                                                        :null => false
    t.datetime "updated_at",                                                        :null => false
    t.string   "status",                                        :default => "open", :null => false
    t.datetime "approved_date"
    t.integer  "approved_by"
    t.boolean  "consumed",                                      :default => false,  :null => false
    t.string   "view_level",                                    :default => "",     :null => false
  end

  create_table "messages", :force => true do |t|
    t.text     "message",         :default => "", :null => false
    t.string   "send_method"
    t.datetime "email_sent_date"
    t.datetime "sms_sent_date"
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.text     "sending_errors",  :default => "", :null => false
    t.string   "subject"
  end

  create_table "purveyors", :force => true do |t|
    t.string   "name",                  :default => "",    :null => false
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "address"
    t.string   "contact_person"
    t.string   "phone_number"
    t.string   "email"
    t.string   "website"
    t.boolean  "deleted",               :default => false, :null => false
    t.datetime "deleted_at"
  end

  add_index "purveyors", ["deleted"], :name => "index_purveyors_on_deleted"

  create_table "restaurant_owners", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "restaurant_owners", ["restaurant_id"], :name => "index_restaurant_owners_on_restaurant_id"
  add_index "restaurant_owners", ["user_id"], :name => "index_restaurant_owners_on_user_id"

  create_table "restaurants", :force => true do |t|
    t.integer  "account_id"
    t.string   "name",                               :null => false
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "phone_number"
    t.string   "status"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "upload_name",        :default => "", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trackers", :force => true do |t|
    t.text     "details"
    t.string   "ip"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_account_restaurant_roles", :force => true do |t|
    t.integer "user_id"
    t.integer "account_id"
    t.integer "restaurant_id"
    t.integer "role_id"
  end

  create_table "user_accounts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "account_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_accounts", ["account_id"], :name => "index_user_accounts_on_account_id"
  add_index "user_accounts", ["user_id"], :name => "index_user_accounts_on_user_id"

  create_table "user_restaurant_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.integer  "role_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "user_restaurant_roles", ["restaurant_id"], :name => "index_user_restaurant_roles_on_restaurant_id"
  add_index "user_restaurant_roles", ["role_id"], :name => "index_user_restaurant_roles_on_role_id"
  add_index "user_restaurant_roles", ["user_id"], :name => "index_user_restaurant_roles_on_user_id"

  create_table "user_restaurants", :force => true do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "role_id"
  end

  add_index "user_restaurants", ["restaurant_id"], :name => "index_user_restaurants_on_restaurant_id"
  add_index "user_restaurants", ["role_id"], :name => "index_user_restaurants_on_role_id"
  add_index "user_restaurants", ["user_id"], :name => "index_user_restaurants_on_user_id"

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_roles", ["role_id"], :name => "index_user_roles_on_role_id"
  add_index "user_roles", ["user_id"], :name => "index_user_roles_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "username",               :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "phone_number"
    t.text     "notes"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.boolean  "is_active",              :default => true
    t.boolean  "deleted",                :default => false, :null => false
    t.datetime "deleted_at"
  end

  add_index "users", ["deleted"], :name => "index_users_on_deleted"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
