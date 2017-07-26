require 'test_helper'

class UranaisControllerTest < ActionController::TestCase
  setup do
    @uranai = uranais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uranais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uranai" do
    assert_difference('Uranai.count') do
      post :create, uranai: { detail: @uranai.detail, luck: @uranai.luck }
    end

    assert_redirected_to uranai_path(assigns(:uranai))
  end

  test "should show uranai" do
    get :show, id: @uranai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uranai
    assert_response :success
  end

  test "should update uranai" do
    patch :update, id: @uranai, uranai: { detail: @uranai.detail, luck: @uranai.luck }
    assert_redirected_to uranai_path(assigns(:uranai))
  end

  test "should destroy uranai" do
    assert_difference('Uranai.count', -1) do
      delete :destroy, id: @uranai
    end

    assert_redirected_to uranais_path
  end
end
