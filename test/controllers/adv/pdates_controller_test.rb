require 'test_helper'

class Adv::PdatesControllerTest < ActionController::TestCase
  setup do
    @adv_pdate = adv_pdates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adv_pdates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adv_pdate" do
    assert_difference('Adv::Pdate.count') do
      post :create, adv_pdate: { layout: @adv_pdate.layout, p_date: @adv_pdate.p_date, remark: @adv_pdate.remark, request_id: @adv_pdate.request_id }
    end

    assert_redirected_to adv_pdate_path(assigns(:adv_pdate))
  end

  test "should show adv_pdate" do
    get :show, id: @adv_pdate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adv_pdate
    assert_response :success
  end

  test "should update adv_pdate" do
    patch :update, id: @adv_pdate, adv_pdate: { layout: @adv_pdate.layout, p_date: @adv_pdate.p_date, remark: @adv_pdate.remark, request_id: @adv_pdate.request_id }
    assert_redirected_to adv_pdate_path(assigns(:adv_pdate))
  end

  test "should destroy adv_pdate" do
    assert_difference('Adv::Pdate.count', -1) do
      delete :destroy, id: @adv_pdate
    end

    assert_redirected_to adv_pdates_path
  end
end
