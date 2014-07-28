require 'test_helper'

class Issue::CpublishesControllerTest < ActionController::TestCase
  setup do
    @issue_cpublish = issue_cpublishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_cpublishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_cpublish" do
    assert_difference('Issue::Cpublish.count') do
      post :create, issue_cpublish: { issue_publish_id: @issue_cpublish.issue_publish_id }
    end

    assert_redirected_to issue_cpublish_path(assigns(:issue_cpublish))
  end

  test "should show issue_cpublish" do
    get :show, id: @issue_cpublish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_cpublish
    assert_response :success
  end

  test "should update issue_cpublish" do
    patch :update, id: @issue_cpublish, issue_cpublish: { issue_publish_id: @issue_cpublish.issue_publish_id }
    assert_redirected_to issue_cpublish_path(assigns(:issue_cpublish))
  end

  test "should destroy issue_cpublish" do
    assert_difference('Issue::Cpublish.count', -1) do
      delete :destroy, id: @issue_cpublish
    end

    assert_redirected_to issue_cpublishes_path
  end
end
