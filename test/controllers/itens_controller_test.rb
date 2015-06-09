require 'test_helper'

class ItensControllerTest < ActionController::TestCase
  setup do
    @iten = itens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iten" do
    assert_difference('Iten.count') do
      post :create, iten: { acrescimo: @iten.acrescimo, desconto: @iten.desconto, descricao: @iten.descricao, ord_item: @iten.ord_item, produto_id: @iten.produto_id, quantidade: @iten.quantidade, valor_bruto: @iten.valor_bruto, valor_liquido: @iten.valor_liquido, venda_id: @iten.venda_id }
    end

    assert_redirected_to iten_path(assigns(:iten))
  end

  test "should show iten" do
    get :show, id: @iten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iten
    assert_response :success
  end

  test "should update iten" do
    patch :update, id: @iten, iten: { acrescimo: @iten.acrescimo, desconto: @iten.desconto, descricao: @iten.descricao, ord_item: @iten.ord_item, produto_id: @iten.produto_id, quantidade: @iten.quantidade, valor_bruto: @iten.valor_bruto, valor_liquido: @iten.valor_liquido, venda_id: @iten.venda_id }
    assert_redirected_to iten_path(assigns(:iten))
  end

  test "should destroy iten" do
    assert_difference('Iten.count', -1) do
      delete :destroy, id: @iten
    end

    assert_redirected_to itens_path
  end
end
