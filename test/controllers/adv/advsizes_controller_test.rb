require 'test_helper'

class Adv::AdvsizesControllerTest < ActionController::TestCase
  setup do
    @adv_advsize = adv_advsizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adv_advsizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adv_advsize" do
    assert_difference('Adv::Advsize.count') do
      post :create, adv_advsize: { advsize: @adv_advsize.advsize, code: @adv_advsize.code, remark: @adv_advsize.remark }
    end

    assert_redirected_to adv_advsize_path(assigns(:adv_advsize))
  end

  test "should show adv_advsize" do
    get :show, id: @adv_advsize
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adv_advsize
    assert_response :success
  end

  test "should update adv_advsize" do
    patch :update, id: @adv_advsize, adv_advsize: { advsize: @adv_advsize.advsize, code: @adv_advsize.code, remark: @adv_advsize.remark }
    assert_redirected_to adv_advsize_path(assigns(:adv_advsize))
  end

  test "should destroy adv_advsize" do
    assert_difference('Adv::Advsize.count', -1) do
      delete :destroy, id: @adv_advsize
    end

    assert_redirected_to adv_advsizes_path
  end
end
