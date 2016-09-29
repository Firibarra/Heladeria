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

ActiveRecord::Schema.define(version: 20160929143844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "banos", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "valor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "boleta", force: :cascade do |t|
    t.integer  "monto"
    t.integer  "descuento"
    t.date     "fecha"
    t.integer  "pedido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chips", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "valor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido_p"
    t.string   "apellido_m"
    t.integer  "rut"
    t.string   "verifi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "copos", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "valor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "galleta", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "valor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "helados", force: :cascade do |t|
    t.integer  "valor"
    t.integer  "tipo_id"
    t.integer  "copo_id"
    t.integer  "sabor_id"
    t.integer  "salsa_id"
    t.integer  "chip_id"
    t.integer  "galletum_id"
    t.integer  "bano_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lista_helados", force: :cascade do |t|
    t.integer  "pedido_id"
    t.integer  "helado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lista_sabors", force: :cascade do |t|
    t.integer  "helado_id"
    t.integer  "sabor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "cliente_id"
    t.integer  "venderor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sabors", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "salsas", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "valor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "valor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vendedors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_vendedors_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_vendedors_on_reset_password_token", unique: true, using: :btree
  end

  create_table "venderors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido_p"
    t.string   "apellido_m"
    t.integer  "rut"
    t.string   "verifi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "clave"
  end

end
