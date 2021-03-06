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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_03_24_092714) do

  create_table "friends", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
=======
ActiveRecord::Schema.define(version: 2019_03_21_181536) do

  create_table "friends", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
>>>>>>> c9b3769048f2190267a8ca6421bcfbd28f7eee60
    t.integer "user_id"
    t.integer "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "groups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "groups_orders_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
=======
  create_table "groups", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_orders_users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
>>>>>>> c9b3769048f2190267a8ca6421bcfbd28f7eee60
    t.integer "user_id"
    t.bigint "group_id"
    t.bigint "order_id"
    t.boolean "joined"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_groups_orders_users_on_group_id"
    t.index ["order_id"], name: "index_groups_orders_users_on_order_id"
  end

<<<<<<< HEAD
  create_table "groups_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "member_id"
    t.index ["group_id"], name: "index_groups_users_on_group_id"
  end

  create_table "members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
=======
  create_table "groups_users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "user_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_groups_users_on_group_id"
  end

  create_table "notifications", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
>>>>>>> c9b3769048f2190267a8ca6421bcfbd28f7eee60
    t.string "notification"
    t.integer "user_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "order_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
=======
  create_table "order_details", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
>>>>>>> c9b3769048f2190267a8ca6421bcfbd28f7eee60
    t.string "item"
    t.integer "amount"
    t.integer "price"
    t.text "comments"
    t.integer "user_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
  end

<<<<<<< HEAD
  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
=======
  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
>>>>>>> c9b3769048f2190267a8ca6421bcfbd28f7eee60
    t.string "meal"
    t.string "restaurant_name"
    t.integer "user_id"
    t.string "menu_image"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
=======
  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
>>>>>>> c9b3769048f2190267a8ca6421bcfbd28f7eee60
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "groups_orders_users", "groups"
  add_foreign_key "groups_orders_users", "orders"
  add_foreign_key "groups_users", "groups"
  add_foreign_key "order_details", "orders"
end
