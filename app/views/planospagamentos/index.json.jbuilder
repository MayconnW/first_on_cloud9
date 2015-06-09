json.array!(@planospagamentos) do |planospagamento|
  json.extract! planospagamento, :id, :descricao, :parcelas, :periodo, :desconto, :acrescimo, :entrada, :vencimentofixo
  json.url planospagamento_url(planospagamento, format: :json)
end
