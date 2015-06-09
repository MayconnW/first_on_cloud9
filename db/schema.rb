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

ActiveRecord::Schema.define(version: 20150609010831) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "fantasia"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "email"
    t.string   "dddfone"
    t.string   "fone"
    t.string   "dddcel"
    t.string   "celular"
    t.string   "status"
    t.datetime "datanasc"
    t.string   "cpfcnpj"
    t.string   "rgie"
    t.boolean  "alterado"
    t.string   "tipopessoa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itens", force: :cascade do |t|
    t.integer  "venda_id"
    t.integer  "ord_item"
    t.integer  "produto_id"
    t.string   "descricao"
    t.float    "quantidade"
    t.float    "valor_bruto"
    t.float    "valor_liquido"
    t.float    "desconto"
    t.float    "acrescimo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "itens", ["produto_id"], name: "index_itens_on_produto_id"
  add_index "itens", ["venda_id"], name: "index_itens_on_venda_id"

  create_table "planospagamentos", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "parcelas"
    t.integer  "periodo"
    t.float    "desconto"
    t.float    "acrescimo"
    t.boolean  "entrada"
    t.boolean  "vencimentofixo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "descricao"
    t.string   "unidade"
    t.text     "observacao"
    t.float    "preco"
    t.string   "codbarras"
    t.boolean  "fraciona"
    t.boolean  "ctrlpreco"
    t.boolean  "ctrlestoque"
    t.float    "quantidade"
    t.float    "maxdesc"
    t.float    "maxacresc"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.string   "imei"
    t.datetime "dataemissao"
    t.integer  "cliente_id"
    t.text     "obs"
    t.datetime "data_prev_entrega"
    t.float    "total_bruto"
    t.float    "total_liquido"
    t.float    "desconto"
    t.float    "acrescimo"
    t.integer  "planospagamento_id"
    t.string   "status"
    t.string   "vendedor"
    t.string   "hora"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "vendas", ["cliente_id"], name: "index_vendas_on_cliente_id"
  add_index "vendas", ["planospagamento_id"], name: "index_vendas_on_planospagamento_id"

end
