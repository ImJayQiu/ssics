require 'test_helper'

class General::NoticesControllerTest < ActionController::TestCase
  setup do
    @general_notice = general_notices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_notices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_notice" do
    assert_difference('General::Notice.count') do
      post :create, general_notice: { date: @general_notice.date, e_date: @general_notice.e_date, notice: @general_notice.notice, operator: @general_notice.operator }
    end

    assert_redirected_to general_notice_path(assigns(:general_notice))
  end

  test "should show general_notice" do
    get :show, id: @general_notice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_notice
    assert_response :success
  end

  test "should update general_notice" do
    patch :update, id: @general_notice, general_notice: { date: @general_notice.date, e_date: @general_notice.e_date, notice: @general_notice.notice, operator: @general_notice.operator }
    assert_redirected_to general_notice_path(assigns(:general_notice))
  end

  test "should destroy general_notice" do
    assert_difference('General::Notice.count', -1) do
      delete :destroy, id: @general_notice
    end

    assert_redirected_to general_notices_path
  end
end
