require 'test_helper'

class PujasControllerTest < ActionController::TestCase
  setup do
    @puja = pujas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pujas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puja" do
    assert_difference('Puja.count') do
      post :create, puja: { product_id_id: @puja.product_id_id, user_id_id: @puja.user_id_id }
    end

    assert_redirected_to puja_path(assigns(:puja))
  end

  test "should show puja" do
    get :show, id: @puja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puja
    assert_response :success
  end

  test "should update puja" do
    patch :update, id: @puja, puja: { product_id_id: @puja.product_id_id, user_id_id: @puja.user_id_id }
    assert_redirected_to puja_path(assigns(:puja))
  end

  test "should destroy puja" do
    assert_difference('Puja.count', -1) do
      delete :destroy, id: @puja
    end

    assert_redirected_to pujas_path
  end
end
