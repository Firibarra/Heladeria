require 'test_helper'

class GalletaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @galletum = galleta(:one)
  end

  test "should get index" do
    get galleta_url
    assert_response :success
  end

  test "should get new" do
    get new_galletum_url
    assert_response :success
  end

  test "should create galletum" do
    assert_difference('Galletum.count') do
      post galleta_url, params: { galletum: { descripcion: @galletum.descripcion, valor: @galletum.valor } }
    end

    assert_redirected_to galletum_url(Galletum.last)
  end

  test "should show galletum" do
    get galletum_url(@galletum)
    assert_response :success
  end

  test "should get edit" do
    get edit_galletum_url(@galletum)
    assert_response :success
  end

  test "should update galletum" do
    patch galletum_url(@galletum), params: { galletum: { descripcion: @galletum.descripcion, valor: @galletum.valor } }
    assert_redirected_to galletum_url(@galletum)
  end

  test "should destroy galletum" do
    assert_difference('Galletum.count', -1) do
      delete galletum_url(@galletum)
    end

    assert_redirected_to galleta_url
  end
end
