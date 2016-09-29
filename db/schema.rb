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

ActiveRecord::Schema.define(version: 20160929005434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
