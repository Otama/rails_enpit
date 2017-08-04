require 'test_helper'

class JankensControllerTest < ActionController::TestCase
  setup do
    @janken = jankens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jankens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create janken" do
    assert_difference('Janken.count') do
      post :create, janken: { hand: @janken.hand, name: @janken.name, room: @janken.room }
    end

#    assert_redirected_to janken_path(assigns(:janken))
  end

  test "should show janken" do
    get :show, id: @janken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @janken
    assert_response :success
  end

  test "should update janken" do
    patch :update, id: @janken, janken: { hand: @janken.hand, name: @janken.name, room: @janken.room }
    assert_redirected_to janken_path(assigns(:janken))
  end

  test "should destroy janken" do
    assert_difference('Janken.count', -1) do
      delete :destroy, id: @janken
    end

    assert_redirected_to jankens_path
  end
end
