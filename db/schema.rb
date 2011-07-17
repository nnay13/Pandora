# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100806083207) do

  create_table "etablissements", :force => true do |t|
    t.string   "nom"
    t.integer  "utilisateur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fonctions", :force => true do |t|
    t.string   "intitule"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parametres", :force => true do |t|
    t.boolean  "tooltip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "nom"
    t.integer  "utilisateur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "etablissement_id"
  end

  create_table "sites", :force => true do |t|
    t.string   "nom"
    t.integer  "utilisateur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "utilisateurs", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "login"
    t.string   "password"
    t.string   "email"
    t.integer  "service_id"
    t.integer  "site_id"
    t.integer  "etablissement_id"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fonction_id"
    t.integer  "parametre_id"
    t.string   "photo"
  end

end
