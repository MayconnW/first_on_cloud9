json.array!(@itens) do |iten|
  json.extract! iten, :id, :venda_id, :ord_item, :produto_id, :descricao, :quantidade, :valor_bruto, :valor_liquido, :desconto, :acrescimo
  json.url iten_url(iten, format: :json)
end
