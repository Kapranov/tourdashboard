ActiveRecord::Schema.define(version: 25) do

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "microposts", force: :cascade do |t|
    t.string   "author"
    t.string   "email"
    t.text     "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "odd"
    t.string   "mark"
    t.date     "order_day"
    t.string   "country", default: "UA", null: false
    t.date     "tour_day_begin"
    t.date     "tour_day_end"
    t.integer  "night"
    t.date     "aircross_begin"
    t.date     "aircross_end"
    t.string   "airtable"
    t.string   "airclass"
    t.string   "airline"
    t.date     "hotel_begin"
    t.date     "hotel_end"
    t.string   "hotel_name"
    t.integer  "hotel_class"
    t.string   "hotel_city"
    t.string   "hotel_class_room"
    t.string   "hotel_pay"
    t.date     "service_begin"
    t.date     "service_end"
    t.string   "service_name"
    t.date     "medical_begin"
    t.date     "medical_end"
    t.string   "medical_name"
    t.date     "visa_begin"
    t.date     "visa_end"
    t.string   "visa_need"
    t.integer  "agency_id"
    t.integer  "payment_tour"
    t.string   "payment_currency"
    t.integer  "sell_tour"
    t.string   "sell_currency"
    t.integer  "operator"
    t.string   "operator_currency"
    t.integer  "in_total"
    t.string   "total_currency"
    t.integer  "paid"
    t.string   "paid_currency"
    t.integer  "debt"
    t.string   "debt_currency"
    t.integer  "tourist_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["tourist_id"], name: "index_orders_on_tourist_id", unique: true

  create_table "tourists", force: true do |t|
    t.string   "client"
    t.string   "lastname_ua"
    t.string   "firstname_ua"
    t.string   "middlename_ua"
    t.string   "lastname_en"
    t.string   "firstname_en"
    t.date     "day_born"
    t.string   "gender"
    t.string   "add_lastname_en_one"
    t.string   "add_firstname_en_one"
    t.string   "add_passport_one"
    t.date     "add_day_born_one"
    t.integer  "add_phone_one"
    t.string   "add_lastname_en_two"
    t.string   "add_firstname_en_two"
    t.string   "add_passport_two"
    t.date     "add_day_born_two"
    t.integer  "add_phone_two"
    t.string   "add_lastname_en_three"
    t.string   "add_firstname_en_three"
    t.string   "add_passport_three"
    t.date     "add_day_born_three"
    t.integer  "add_phone_three"
    t.string   "add_lastname_en_four"
    t.string   "add_firstname_en_four"
    t.string   "add_passport_four"
    t.date     "add_day_born_four"
    t.integer  "add_phone_four"
    t.string   "add_lastname_en_five"
    t.string   "add_firstname_en_five"
    t.string   "add_passport_five"
    t.date     "add_day_born_five"
    t.integer  "add_phone_five"
    t.string   "country"
    t.string   "foreign_suite"
    t.integer  "foreign_number"
    t.date     "foreign_day_issue"
    t.integer  "issued_by"
    t.date     "validity"
    t.string   "city"
    t.string   "street"
    t.integer  "post_index"
    t.string   "house"
    t.integer  "apartment"
    t.integer  "phone_mobile"
    t.integer  "phone_home"
    t.integer  "phone_work"
    t.string   "email"
    t.string   "skype"
    t.text     "comment"
    t.string   "client_status"
    t.string   "learned_from"
    t.integer  "msg_sms"
    t.integer  "msg_mail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "add_passport_day_issue_one"
    t.date     "add_passport_day_issue_two"
    t.date     "add_passport_day_issue_three"
    t.date     "add_passport_day_issue_four"
    t.date     "add_passport_day_issue_five"
    t.date     "add_passport_validity_one"
    t.date     "add_passport_validity_two"
    t.date     "add_passport_validity_three"
    t.date     "add_passport_validity_four"
    t.date     "add_passport_validity_five"
    t.integer  "add_issued_by_one"
    t.integer  "add_issued_by_two"
    t.integer  "add_issued_by_three"
    t.integer  "add_issued_by_four"
    t.integer  "add_issued_by_five"
  end

  create_table "agencies", force: true do |t|
    t.string   "agency_name"
    t.integer  "agency_pn"
    t.integer  "agency_edrpoy"
    t.string   "agency_city"
    t.string   "agency_street"
    t.integer  "agency_post_index"
    t.string   "agency_house"
    t.integer  "agency_apart"
    t.string   "city_legal"
    t.string   "street_legal"
    t.integer  "post_index_legal"
    t.string   "house_legal"
    t.integer  "apart_legal"
    t.integer  "agency_phone_work"
    t.integer  "agency_phone_mobile"
    t.string   "agency_email_one"
    t.string   "agency_email_two"
    t.string   "agency_email_three"
    t.string   "agency_web"
    t.string   "agency_comment"
    t.string   "bank"
    t.integer  "mfo"
    t.integer  "account"
    t.string   "contract_number"
    t.date     "contract_from"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                        limit: 255,             null: false
    t.string   "crypted_password",             limit: 255,             null: false
    t.string   "salt",                         limit: 255,             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address",   limit: 255
    t.integer  "failed_logins_count",          default: 0
    t.datetime "lock_expires_at"
    t.string   "unlock_token",                 limit: 255
    t.string   "username",                     limit: 255
    t.string   "role",                         limit: 255
    t.string   "remember_me_token",            limit: 255
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["email", "username"], name: "index_users_on_email_and_username"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at"
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"

end
