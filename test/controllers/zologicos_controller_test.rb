require 'test_helper'

class ZologicosControllerTest < ActionController::TestCase
  setup do
    @zologico = zologicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zologicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zologico" do
    assert_difference('Zologico.count') do
      post :create, zologico: { name: @zologico.name }
    end

    assert_redirected_to zologico_path(assigns(:zologico))
  end

  test "should show zologico" do
    get :show, id: @zologico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zologico
    assert_response :success
  end

  test "should update zologico" do
    patch :update, id: @zologico, zologico: { name: @zologico.name }
    assert_redirected_to zologico_path(assigns(:zologico))
  end

  test "should destroy zologico" do
    assert_difference('Zologico.count', -1) do
      delete :destroy, id: @zologico
    end

    assert_redirected_to zologicos_path
  end
end
