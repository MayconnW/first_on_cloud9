class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.string :unidade
      t.text :observacao
      t.float :preco
      t.string :codbarras
      t.boolean :fraciona
      t.boolean :ctrlpreco
      t.boolean :ctrlestoque
      t.float :quantidade
      t.float :maxdesc
      t.float :maxacresc

      t.timestamps null: false
    end
  end
end
