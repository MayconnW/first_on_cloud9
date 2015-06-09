class CreateItens < ActiveRecord::Migration
  def change
    create_table :itens do |t|
      t.references :venda, index: true, foreign_key: true
      t.integer :ord_item
      t.references :produto, index: true, foreign_key: true
      t.string :descricao
      t.float :quantidade
      t.float :valor_bruto
      t.float :valor_liquido
      t.float :desconto
      t.float :acrescimo

      t.timestamps null: false
    end
  end
end
