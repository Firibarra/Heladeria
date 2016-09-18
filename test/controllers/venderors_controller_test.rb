require 'test_helper'

class VenderorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venderor = venderors(:one)
  end

  test "should get index" do
    get venderors_url
    assert_response :success
  end

  test "should get new" do
    get new_venderor_url
    assert_response :success
  end

  test "should create venderor" do
    assert_difference('Venderor.count') do
      post venderors_url, params: { venderor: { apellido_m: @venderor.apellido_m, apellido_p: @venderor.apellido_p, nombre: @venderor.nombre, rut: @venderor.rut, verifi: @venderor.verifi } }
    end

    assert_redirected_to venderor_url(Venderor.last)
  end

  test "should show venderor" do
    get venderor_url(@venderor)
    assert_response :success
  end

  test "should get edit" do
    get edit_venderor_url(@venderor)
    assert_response :success
  end

  test "should update venderor" do
    patch venderor_url(@venderor), params: { venderor: { apellido_m: @venderor.apellido_m, apellido_p: @venderor.apellido_p, nombre: @venderor.nombre, rut: @venderor.rut, verifi: @venderor.verifi } }
    assert_redirected_to venderor_url(@venderor)
  end

  test "should destroy venderor" do
    assert_difference('Venderor.count', -1) do
      delete venderor_url(@venderor)
    end

    assert_redirected_to venderors_url
  end
end
