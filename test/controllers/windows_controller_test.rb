require 'test_helper'

class WindowsControllerTest < ActionDispatch::IntegrationTest
  test "should get entrada" do
    get windows_entrada_url
    assert_response :success
  end

  test "should get salida" do
    get windows_salida_url
    assert_response :success
  end

  test "should get compra" do
    get windows_compra_url
    assert_response :success
  end

  test "should get vista" do
    get windows_vista_url
    assert_response :success
  end

end
