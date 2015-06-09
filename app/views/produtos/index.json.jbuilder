json.array!(@produtos) do |produto|
  json.extract! produto, :id, :descricao, :unidade, :observacao, :preco, :codbarras, :fraciona, :ctrlpreco, :ctrlestoque, :quantidade, :maxdesc, :maxacresc
  json.url produto_url(produto, format: :json)
end
