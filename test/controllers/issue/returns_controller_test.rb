require 'test_helper'

class Issue::ReturnsControllerTest < ActionController::TestCase
  setup do
    @issue_return = issue_returns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_returns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_return" do
    assert_difference('Issue::Return.count') do
      post :create, issue_return: { c_code: @issue_return.c_code, date: @issue_return.date, operator: @issue_return.operator, qty: @issue_return.qty, remark: @issue_return.remark }
    end

    assert_redirected_to issue_return_path(assigns(:issue_return))
  end

  test "should show issue_return" do
    get :show, id: @issue_return
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_return
    assert_response :success
  end

  test "should update issue_return" do
    patch :update, id: @issue_return, issue_return: { c_code: @issue_return.c_code, date: @issue_return.date, operator: @issue_return.operator, qty: @issue_return.qty, remark: @issue_return.remark }
    assert_redirected_to issue_return_path(assigns(:issue_return))
  end

  test "should destroy issue_return" do
    assert_difference('Issue::Return.count', -1) do
      delete :destroy, id: @issue_return
    end

    assert_redirected_to issue_returns_path
  end
end
