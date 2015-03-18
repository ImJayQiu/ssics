require 'test_helper'

class RimesControllerTest < ActionController::TestCase
  setup do
    @rime = rimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rime" do
    assert_difference('Rime.count') do
      post :create, rime: { data1: @rime.data1, data2: @rime.data2, data3: @rime.data3, data4: @rime.data4, data5: @rime.data5, date: @rime.date }
    end

    assert_redirected_to rime_path(assigns(:rime))
  end

  test "should show rime" do
    get :show, id: @rime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rime
    assert_response :success
  end

  test "should update rime" do
    patch :update, id: @rime, rime: { data1: @rime.data1, data2: @rime.data2, data3: @rime.data3, data4: @rime.data4, data5: @rime.data5, date: @rime.date }
    assert_redirected_to rime_path(assigns(:rime))
  end

  test "should destroy rime" do
    assert_difference('Rime.count', -1) do
      delete :destroy, id: @rime
    end

    assert_redirected_to rimes_path
  end
end
