require 'test_helper'

class SitePackageFlowsControllerTest < ActionController::TestCase
  setup do
    @site_package_flow = site_package_flows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_package_flows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_package_flow" do
    assert_difference('SitePackageFlow.count') do
      post :create, site_package_flow: { content: @site_package_flow.content, flow_id: @site_package_flow.flow_id, site_package_id: @site_package_flow.site_package_id, status: @site_package_flow.status }
    end

    assert_redirected_to site_package_flow_path(assigns(:site_package_flow))
  end

  test "should show site_package_flow" do
    get :show, id: @site_package_flow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_package_flow
    assert_response :success
  end

  test "should update site_package_flow" do
    patch :update, id: @site_package_flow, site_package_flow: { content: @site_package_flow.content, flow_id: @site_package_flow.flow_id, site_package_id: @site_package_flow.site_package_id, status: @site_package_flow.status }
    assert_redirected_to site_package_flow_path(assigns(:site_package_flow))
  end

  test "should destroy site_package_flow" do
    assert_difference('SitePackageFlow.count', -1) do
      delete :destroy, id: @site_package_flow
    end

    assert_redirected_to site_package_flows_path
  end
end
