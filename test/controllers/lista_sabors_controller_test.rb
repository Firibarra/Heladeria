require 'test_helper'

class ListaSaborsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lista_sabor = lista_sabors(:one)
  end

  test "should get index" do
    get lista_sabors_url
    assert_response :success
  end

  test "should get new" do
    get new_lista_sabor_url
    assert_response :success
  end

  test "should create lista_sabor" do
    assert_difference('ListaSabor.count') do
      post lista_sabors_url, params: { lista_sabor: { helado_id: @lista_sabor.helado_id, sabor: @lista_sabor.sabor } }
    end

    assert_redirected_to lista_sabor_url(ListaSabor.last)
  end

  test "should show lista_sabor" do
    get lista_sabor_url(@lista_sabor)
    assert_response :success
  end

  test "should get edit" do
    get edit_lista_sabor_url(@lista_sabor)
    assert_response :success
  end

  test "should update lista_sabor" do
    patch lista_sabor_url(@lista_sabor), params: { lista_sabor: { helado_id: @lista_sabor.helado_id, sabor: @lista_sabor.sabor } }
    assert_redirected_to lista_sabor_url(@lista_sabor)
  end

  test "should destroy lista_sabor" do
    assert_difference('ListaSabor.count', -1) do
      delete lista_sabor_url(@lista_sabor)
    end

    assert_redirected_to lista_sabors_url
  end
end
