class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :fantasia
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :email
      t.string :dddfone
      t.string :fone
      t.string :dddcel
      t.string :celular
      t.string :status
      t.datetime :datanasc
      t.string :cpfcnpj
      t.string :rgie
      t.boolean :alterado
      t.string :tipopessoa

      t.timestamps null: false
    end
  end
end
