json.array!(@vendas) do |venda|
  json.extract! venda, :id, :imei, :dataemissao, :cliente_id, :obs, :data_prev_entrega, :total_bruto, :total_liquido, :desconto, :acrescimo, :planospagamento_id, :status, :vendedor, :hora
  json.url venda_url(venda, format: :json)
end
