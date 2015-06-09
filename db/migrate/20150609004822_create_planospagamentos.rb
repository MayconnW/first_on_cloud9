class CreatePlanospagamentos < ActiveRecord::Migration
  def change
    create_table :planospagamentos do |t|
      t.string :descricao
      t.integer :parcelas
      t.integer :periodo
      t.float :desconto
      t.float :acrescimo
      t.boolean :entrada
      t.boolean :vencimentofixo

      t.timestamps null: false
    end
  end
end
