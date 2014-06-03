require 'test_helper'

class Issue::ProvincesControllerTest < ActionController::TestCase
  setup do
    @issue_province = issue_provinces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_provinces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_province" do
    assert_difference('Issue::Province.count') do
      post :create, issue_province: { area_id: @issue_province.area_id, code: @issue_province.code, province: @issue_province.province }
    end

    assert_redirected_to issue_province_path(assigns(:issue_province))
  end

  test "should show issue_province" do
    get :show, id: @issue_province
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_province
    assert_response :success
  end

  test "should update issue_province" do
    patch :update, id: @issue_province, issue_province: { area_id: @issue_province.area_id, code: @issue_province.code, province: @issue_province.province }
    assert_redirected_to issue_province_path(assigns(:issue_province))
  end

  test "should destroy issue_province" do
    assert_difference('Issue::Province.count', -1) do
      delete :destroy, id: @issue_province
    end

    assert_redirected_to issue_provinces_path
  end
end
