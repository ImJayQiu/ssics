require 'test_helper'

class Issue::AreasControllerTest < ActionController::TestCase
  setup do
    @issue_area = issue_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_area" do
    assert_difference('Issue::Area.count') do
      post :create, issue_area: { area: @issue_area.area, code: @issue_area.code, remark: @issue_area.remark }
    end

    assert_redirected_to issue_area_path(assigns(:issue_area))
  end

  test "should show issue_area" do
    get :show, id: @issue_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_area
    assert_response :success
  end

  test "should update issue_area" do
    patch :update, id: @issue_area, issue_area: { area: @issue_area.area, code: @issue_area.code, remark: @issue_area.remark }
    assert_redirected_to issue_area_path(assigns(:issue_area))
  end

  test "should destroy issue_area" do
    assert_difference('Issue::Area.count', -1) do
      delete :destroy, id: @issue_area
    end

    assert_redirected_to issue_areas_path
  end
end
