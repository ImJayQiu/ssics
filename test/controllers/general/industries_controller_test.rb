require 'test_helper'

class General::IndustriesControllerTest < ActionController::TestCase
  setup do
    @general_industry = general_industries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_industries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_industry" do
    assert_difference('General::Industry.count') do
      post :create, general_industry: { cname: @general_industry.cname, code: @general_industry.code, ename: @general_industry.ename, remark: @general_industry.remark, tname: @general_industry.tname }
    end

    assert_redirected_to general_industry_path(assigns(:general_industry))
  end

  test "should show general_industry" do
    get :show, id: @general_industry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_industry
    assert_response :success
  end

  test "should update general_industry" do
    patch :update, id: @general_industry, general_industry: { cname: @general_industry.cname, code: @general_industry.code, ename: @general_industry.ename, remark: @general_industry.remark, tname: @general_industry.tname }
    assert_redirected_to general_industry_path(assigns(:general_industry))
  end

  test "should destroy general_industry" do
    assert_difference('General::Industry.count', -1) do
      delete :destroy, id: @general_industry
    end

    assert_redirected_to general_industries_path
  end
end
