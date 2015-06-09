class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.string :imei
      t.datetime :dataemissao
      t.references :cliente, index: true, foreign_key: true
      t.text :obs
      t.datetime :data_prev_entrega
      t.float :total_bruto
      t.float :total_liquido
      t.float :desconto
      t.float :acrescimo
      t.references :planospagamento, index: true, foreign_key: true
      t.string :status
      t.string :vendedor
      t.string :hora

      t.timestamps null: false
    end
  end
end
