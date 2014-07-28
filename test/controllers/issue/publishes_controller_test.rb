require 'test_helper'

class Issue::PublishesControllerTest < ActionController::TestCase
  setup do
    @issue_publish = issue_publishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_publishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_publish" do
    assert_difference('Issue::Publish.count') do
      post :create, issue_publish: { date: @issue_publish.date }
    end

    assert_redirected_to issue_publish_path(assigns(:issue_publish))
  end

  test "should show issue_publish" do
    get :show, id: @issue_publish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_publish
    assert_response :success
  end

  test "should update issue_publish" do
    patch :update, id: @issue_publish, issue_publish: { date: @issue_publish.date }
    assert_redirected_to issue_publish_path(assigns(:issue_publish))
  end

  test "should destroy issue_publish" do
    assert_difference('Issue::Publish.count', -1) do
      delete :destroy, id: @issue_publish
    end

    assert_redirected_to issue_publishes_path
  end
end
