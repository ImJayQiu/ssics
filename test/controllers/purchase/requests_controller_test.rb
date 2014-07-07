require 'test_helper'

class Purchase::RequestsControllerTest < ActionController::TestCase
  setup do
    @purchase_request = purchase_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_request" do
    assert_difference('Purchase::Request.count') do
      post :create, purchase_request: { code: @purchase_request.code, estimate_price: @purchase_request.estimate_price, operator: @purchase_request.operator, p_confirm: @purchase_request.p_confirm, p_location: @purchase_request.p_location, p_name: @purchase_request.p_name, p_net_price: @purchase_request.p_net_price, p_plan: @purchase_request.p_plan, p_total_price: @purchase_request.p_total_price, p_vat: @purchase_request.p_vat, quantity: @purchase_request.quantity, request_date: @purchase_request.request_date, submit_by: @purchase_request.submit_by, unit: @purchase_request.unit, w_location: @purchase_request.w_location }
    end

    assert_redirected_to purchase_request_path(assigns(:purchase_request))
  end

  test "should show purchase_request" do
    get :show, id: @purchase_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_request
    assert_response :success
  end

  test "should update purchase_request" do
    patch :update, id: @purchase_request, purchase_request: { code: @purchase_request.code, estimate_price: @purchase_request.estimate_price, operator: @purchase_request.operator, p_confirm: @purchase_request.p_confirm, p_location: @purchase_request.p_location, p_name: @purchase_request.p_name, p_net_price: @purchase_request.p_net_price, p_plan: @purchase_request.p_plan, p_total_price: @purchase_request.p_total_price, p_vat: @purchase_request.p_vat, quantity: @purchase_request.quantity, request_date: @purchase_request.request_date, submit_by: @purchase_request.submit_by, unit: @purchase_request.unit, w_location: @purchase_request.w_location }
    assert_redirected_to purchase_request_path(assigns(:purchase_request))
  end

  test "should destroy purchase_request" do
    assert_difference('Purchase::Request.count', -1) do
      delete :destroy, id: @purchase_request
    end

    assert_redirected_to purchase_requests_path
  end
end
