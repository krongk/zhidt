require 'test_helper'

class SitePackageFlowCommentsControllerTest < ActionController::TestCase
  setup do
    @site_package_flow_comment = site_package_flow_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_package_flow_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_package_flow_comment" do
    assert_difference('SitePackageFlowComment.count') do
      post :create, site_package_flow_comment: { content: @site_package_flow_comment.content, site_package_flow_id: @site_package_flow_comment.site_package_flow_id }
    end

    assert_redirected_to site_package_flow_comment_path(assigns(:site_package_flow_comment))
  end

  test "should show site_package_flow_comment" do
    get :show, id: @site_package_flow_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_package_flow_comment
    assert_response :success
  end

  test "should update site_package_flow_comment" do
    patch :update, id: @site_package_flow_comment, site_package_flow_comment: { content: @site_package_flow_comment.content, site_package_flow_id: @site_package_flow_comment.site_package_flow_id }
    assert_redirected_to site_package_flow_comment_path(assigns(:site_package_flow_comment))
  end

  test "should destroy site_package_flow_comment" do
    assert_difference('SitePackageFlowComment.count', -1) do
      delete :destroy, id: @site_package_flow_comment
    end

    assert_redirected_to site_package_flow_comments_path
  end
end
