require 'test_helper'

class VendasControllerTest < ActionController::TestCase
  setup do
    @venda = vendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venda" do
    assert_difference('Venda.count') do
      post :create, venda: { acrescimo: @venda.acrescimo, cliente_id: @venda.cliente_id, data_prev_entrega: @venda.data_prev_entrega, dataemissao: @venda.dataemissao, desconto: @venda.desconto, hora: @venda.hora, imei: @venda.imei, obs: @venda.obs, planospagamento_id: @venda.planospagamento_id, status: @venda.status, total_bruto: @venda.total_bruto, total_liquido: @venda.total_liquido, vendedor: @venda.vendedor }
    end

    assert_redirected_to venda_path(assigns(:venda))
  end

  test "should show venda" do
    get :show, id: @venda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venda
    assert_response :success
  end

  test "should update venda" do
    patch :update, id: @venda, venda: { acrescimo: @venda.acrescimo, cliente_id: @venda.cliente_id, data_prev_entrega: @venda.data_prev_entrega, dataemissao: @venda.dataemissao, desconto: @venda.desconto, hora: @venda.hora, imei: @venda.imei, obs: @venda.obs, planospagamento_id: @venda.planospagamento_id, status: @venda.status, total_bruto: @venda.total_bruto, total_liquido: @venda.total_liquido, vendedor: @venda.vendedor }
    assert_redirected_to venda_path(assigns(:venda))
  end

  test "should destroy venda" do
    assert_difference('Venda.count', -1) do
      delete :destroy, id: @venda
    end

    assert_redirected_to vendas_path
  end
end
