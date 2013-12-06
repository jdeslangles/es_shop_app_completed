require 'test_helper'

class TelevisionsControllerTest < ActionController::TestCase
  setup do
    @television = televisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:televisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create television" do
    assert_difference('Television.count') do
      post :create, television: { feature: @television.feature, format: @television.format, size: @television.size, tech: @television.tech }
    end

    assert_redirected_to television_path(assigns(:television))
  end

  test "should show television" do
    get :show, id: @television
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @television
    assert_response :success
  end

  test "should update television" do
    put :update, id: @television, television: { feature: @television.feature, format: @television.format, size: @television.size, tech: @television.tech }
    assert_redirected_to television_path(assigns(:television))
  end

  test "should destroy television" do
    assert_difference('Television.count', -1) do
      delete :destroy, id: @television
    end

    assert_redirected_to televisions_path
  end
end
