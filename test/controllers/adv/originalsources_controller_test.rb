require 'test_helper'

class Adv::OriginalsourcesControllerTest < ActionController::TestCase
  setup do
    @adv_originalsource = adv_originalsources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adv_originalsources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adv_originalsource" do
    assert_difference('Adv::Originalsource.count') do
      post :create, adv_originalsource: { request_id: @adv_originalsource.request_id }
    end

    assert_redirected_to adv_originalsource_path(assigns(:adv_originalsource))
  end

  test "should show adv_originalsource" do
    get :show, id: @adv_originalsource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adv_originalsource
    assert_response :success
  end

  test "should update adv_originalsource" do
    patch :update, id: @adv_originalsource, adv_originalsource: { request_id: @adv_originalsource.request_id }
    assert_redirected_to adv_originalsource_path(assigns(:adv_originalsource))
  end

  test "should destroy adv_originalsource" do
    assert_difference('Adv::Originalsource.count', -1) do
      delete :destroy, id: @adv_originalsource
    end

    assert_redirected_to adv_originalsources_path
  end
end
