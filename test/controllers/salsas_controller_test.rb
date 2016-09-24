require 'test_helper'

class SalsasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salsa = salsas(:one)
  end

  test "should get index" do
    get salsas_url
    assert_response :success
  end

  test "should get new" do
    get new_salsa_url
    assert_response :success
  end

  test "should create salsa" do
    assert_difference('Salsa.count') do
      post salsas_url, params: { salsa: { descripcion: @salsa.descripcion, valor: @salsa.valor } }
    end

    assert_redirected_to salsa_url(Salsa.last)
  end

  test "should show salsa" do
    get salsa_url(@salsa)
    assert_response :success
  end

  test "should get edit" do
    get edit_salsa_url(@salsa)
    assert_response :success
  end

  test "should update salsa" do
    patch salsa_url(@salsa), params: { salsa: { descripcion: @salsa.descripcion, valor: @salsa.valor } }
    assert_redirected_to salsa_url(@salsa)
  end

  test "should destroy salsa" do
    assert_difference('Salsa.count', -1) do
      delete salsa_url(@salsa)
    end

    assert_redirected_to salsas_url
  end
end
