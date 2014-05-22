require 'test_helper'

class Newspaper::LayoutsControllerTest < ActionController::TestCase
  setup do
    @newspaper_layout = newspaper_layouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newspaper_layouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newspaper_layout" do
    assert_difference('Newspaper::Layout.count') do
      post :create, newspaper_layout: { code: @newspaper_layout.code }
    end

    assert_redirected_to newspaper_layout_path(assigns(:newspaper_layout))
  end

  test "should show newspaper_layout" do
    get :show, id: @newspaper_layout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newspaper_layout
    assert_response :success
  end

  test "should update newspaper_layout" do
    patch :update, id: @newspaper_layout, newspaper_layout: { code: @newspaper_layout.code }
    assert_redirected_to newspaper_layout_path(assigns(:newspaper_layout))
  end

  test "should destroy newspaper_layout" do
    assert_difference('Newspaper::Layout.count', -1) do
      delete :destroy, id: @newspaper_layout
    end

    assert_redirected_to newspaper_layouts_path
  end
end
