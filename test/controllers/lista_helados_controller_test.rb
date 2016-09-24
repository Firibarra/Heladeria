require 'test_helper'

class ListaHeladosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lista_helado = lista_helados(:one)
  end

  test "should get index" do
    get lista_helados_url
    assert_response :success
  end

  test "should get new" do
    get new_lista_helado_url
    assert_response :success
  end

  test "should create lista_helado" do
    assert_difference('ListaHelado.count') do
      post lista_helados_url, params: { lista_helado: { helado_id: @lista_helado.helado_id, pedido_id: @lista_helado.pedido_id } }
    end

    assert_redirected_to lista_helado_url(ListaHelado.last)
  end

  test "should show lista_helado" do
    get lista_helado_url(@lista_helado)
    assert_response :success
  end

  test "should get edit" do
    get edit_lista_helado_url(@lista_helado)
    assert_response :success
  end

  test "should update lista_helado" do
    patch lista_helado_url(@lista_helado), params: { lista_helado: { helado_id: @lista_helado.helado_id, pedido_id: @lista_helado.pedido_id } }
    assert_redirected_to lista_helado_url(@lista_helado)
  end

  test "should destroy lista_helado" do
    assert_difference('ListaHelado.count', -1) do
      delete lista_helado_url(@lista_helado)
    end

    assert_redirected_to lista_helados_url
  end
end
