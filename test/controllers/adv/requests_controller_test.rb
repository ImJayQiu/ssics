require 'test_helper'

class Adv::RequestsControllerTest < ActionController::TestCase
  setup do
    @adv_request = adv_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adv_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adv_request" do
    assert_difference('Adv::Request.count') do
      post :create, adv_request: { a_size: @adv_request.a_size, a_type: @adv_request.a_type, article: @adv_request.article, c_name: @adv_request.c_name, code: @adv_request.code, confirm_by: @adv_request.confirm_by, designer: @adv_request.designer, order_taker: @adv_request.order_taker, p_type: @adv_request.p_type, remark: @adv_request.remark, status: @adv_request.status, submit_by: @adv_request.submit_by }
    end

    assert_redirected_to adv_request_path(assigns(:adv_request))
  end

  test "should show adv_request" do
    get :show, id: @adv_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adv_request
    assert_response :success
  end

  test "should update adv_request" do
    patch :update, id: @adv_request, adv_request: { a_size: @adv_request.a_size, a_type: @adv_request.a_type, article: @adv_request.article, c_name: @adv_request.c_name, code: @adv_request.code, confirm_by: @adv_request.confirm_by, designer: @adv_request.designer, order_taker: @adv_request.order_taker, p_type: @adv_request.p_type, remark: @adv_request.remark, status: @adv_request.status, submit_by: @adv_request.submit_by }
    assert_redirected_to adv_request_path(assigns(:adv_request))
  end

  test "should destroy adv_request" do
    assert_difference('Adv::Request.count', -1) do
      delete :destroy, id: @adv_request
    end

    assert_redirected_to adv_requests_path
  end
end
