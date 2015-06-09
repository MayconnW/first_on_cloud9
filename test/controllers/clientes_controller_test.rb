require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { alterado: @cliente.alterado, bairro: @cliente.bairro, celular: @cliente.celular, cep: @cliente.cep, cidade: @cliente.cidade, cpfcnpj: @cliente.cpfcnpj, datanasc: @cliente.datanasc, dddcel: @cliente.dddcel, dddfone: @cliente.dddfone, email: @cliente.email, endereco: @cliente.endereco, estado: @cliente.estado, fantasia: @cliente.fantasia, fone: @cliente.fone, nome: @cliente.nome, numero: @cliente.numero, rgie: @cliente.rgie, status: @cliente.status, tipopessoa: @cliente.tipopessoa }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { alterado: @cliente.alterado, bairro: @cliente.bairro, celular: @cliente.celular, cep: @cliente.cep, cidade: @cliente.cidade, cpfcnpj: @cliente.cpfcnpj, datanasc: @cliente.datanasc, dddcel: @cliente.dddcel, dddfone: @cliente.dddfone, email: @cliente.email, endereco: @cliente.endereco, estado: @cliente.estado, fantasia: @cliente.fantasia, fone: @cliente.fone, nome: @cliente.nome, numero: @cliente.numero, rgie: @cliente.rgie, status: @cliente.status, tipopessoa: @cliente.tipopessoa }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
