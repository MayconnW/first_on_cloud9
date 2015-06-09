json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :fantasia, :endereco, :numero, :bairro, :cidade, :estado, :cep, :email, :dddfone, :fone, :dddcel, :celular, :status, :datanasc, :cpfcnpj, :rgie, :alterado, :tipopessoa
  json.url cliente_url(cliente, format: :json)
end
