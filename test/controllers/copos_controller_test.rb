require 'test_helper'

class CoposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copo = copos(:one)
  end

  test "should get index" do
    get copos_url
    assert_response :success
  end

  test "should get new" do
    get new_copo_url
    assert_response :success
  end

  test "should create copo" do
    assert_difference('Copo.count') do
      post copos_url, params: { copo: { descripcion: @copo.descripcion, valor: @copo.valor } }
    end

    assert_redirected_to copo_url(Copo.last)
  end

  test "should show copo" do
    get copo_url(@copo)
    assert_response :success
  end

  test "should get edit" do
    get edit_copo_url(@copo)
    assert_response :success
  end

  test "should update copo" do
    patch copo_url(@copo), params: { copo: { descripcion: @copo.descripcion, valor: @copo.valor } }
    assert_redirected_to copo_url(@copo)
  end

  test "should destroy copo" do
    assert_difference('Copo.count', -1) do
      delete copo_url(@copo)
    end

    assert_redirected_to copos_url
  end
end
