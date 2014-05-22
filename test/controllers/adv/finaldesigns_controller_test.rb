require 'test_helper'

class Adv::FinaldesignsControllerTest < ActionController::TestCase
  setup do
    @adv_finaldesign = adv_finaldesigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adv_finaldesigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adv_finaldesign" do
    assert_difference('Adv::Finaldesign.count') do
      post :create, adv_finaldesign: { remark: @adv_finaldesign.remark, request_id: @adv_finaldesign.request_id, upload_by: @adv_finaldesign.upload_by }
    end

    assert_redirected_to adv_finaldesign_path(assigns(:adv_finaldesign))
  end

  test "should show adv_finaldesign" do
    get :show, id: @adv_finaldesign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adv_finaldesign
    assert_response :success
  end

  test "should update adv_finaldesign" do
    patch :update, id: @adv_finaldesign, adv_finaldesign: { remark: @adv_finaldesign.remark, request_id: @adv_finaldesign.request_id, upload_by: @adv_finaldesign.upload_by }
    assert_redirected_to adv_finaldesign_path(assigns(:adv_finaldesign))
  end

  test "should destroy adv_finaldesign" do
    assert_difference('Adv::Finaldesign.count', -1) do
      delete :destroy, id: @adv_finaldesign
    end

    assert_redirected_to adv_finaldesigns_path
  end
end
