require 'test_helper'

class Issue::CitiesControllerTest < ActionController::TestCase
  setup do
    @issue_city = issue_cities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_cities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_city" do
    assert_difference('Issue::City.count') do
      post :create, issue_city: { area: @issue_city.area, city_name: @issue_city.city_name, code: @issue_city.code, remark: @issue_city.remark }
    end

    assert_redirected_to issue_city_path(assigns(:issue_city))
  end

  test "should show issue_city" do
    get :show, id: @issue_city
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_city
    assert_response :success
  end

  test "should update issue_city" do
    patch :update, id: @issue_city, issue_city: { area: @issue_city.area, city_name: @issue_city.city_name, code: @issue_city.code, remark: @issue_city.remark }
    assert_redirected_to issue_city_path(assigns(:issue_city))
  end

  test "should destroy issue_city" do
    assert_difference('Issue::City.count', -1) do
      delete :destroy, id: @issue_city
    end

    assert_redirected_to issue_cities_path
  end
end
