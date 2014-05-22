require 'test_helper'

class Adv::AdvtypesControllerTest < ActionController::TestCase
  setup do
    @adv_advtype = adv_advtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adv_advtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adv_advtype" do
    assert_difference('Adv::Advtype.count') do
      post :create, adv_advtype: { advtype: @adv_advtype.advtype, code: @adv_advtype.code, remark: @adv_advtype.remark }
    end

    assert_redirected_to adv_advtype_path(assigns(:adv_advtype))
  end

  test "should show adv_advtype" do
    get :show, id: @adv_advtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adv_advtype
    assert_response :success
  end

  test "should update adv_advtype" do
    patch :update, id: @adv_advtype, adv_advtype: { advtype: @adv_advtype.advtype, code: @adv_advtype.code, remark: @adv_advtype.remark }
    assert_redirected_to adv_advtype_path(assigns(:adv_advtype))
  end

  test "should destroy adv_advtype" do
    assert_difference('Adv::Advtype.count', -1) do
      delete :destroy, id: @adv_advtype
    end

    assert_redirected_to adv_advtypes_path
  end
end
