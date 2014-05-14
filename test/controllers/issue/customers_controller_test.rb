require 'test_helper'

class Issue::CustomersControllerTest < ActionController::TestCase
  setup do
    @issue_customer = issue_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_customer" do
    assert_difference('Issue::Customer.count') do
      post :create, issue_customer: { area: @issue_customer.area, c_address: @issue_customer.c_address, c_name: @issue_customer.c_name, c_type: @issue_customer.c_type, code: @issue_customer.code, email: @issue_customer.email, fax: @issue_customer.fax, p_name: @issue_customer.p_name, phone: @issue_customer.phone }
    end

    assert_redirected_to issue_customer_path(assigns(:issue_customer))
  end

  test "should show issue_customer" do
    get :show, id: @issue_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_customer
    assert_response :success
  end

  test "should update issue_customer" do
    patch :update, id: @issue_customer, issue_customer: { area: @issue_customer.area, c_address: @issue_customer.c_address, c_name: @issue_customer.c_name, c_type: @issue_customer.c_type, code: @issue_customer.code, email: @issue_customer.email, fax: @issue_customer.fax, p_name: @issue_customer.p_name, phone: @issue_customer.phone }
    assert_redirected_to issue_customer_path(assigns(:issue_customer))
  end

  test "should destroy issue_customer" do
    assert_difference('Issue::Customer.count', -1) do
      delete :destroy, id: @issue_customer
    end

    assert_redirected_to issue_customers_path
  end
end
