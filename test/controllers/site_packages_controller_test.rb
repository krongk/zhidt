require 'test_helper'

class SitePackagesControllerTest < ActionController::TestCase
  setup do
    @site_package = site_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_package" do
    assert_difference('SitePackage.count') do
      post :create, site_package: { package_id: @site_package.package_id, site_id: @site_package.site_id }
    end

    assert_redirected_to site_package_path(assigns(:site_package))
  end

  test "should show site_package" do
    get :show, id: @site_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_package
    assert_response :success
  end

  test "should update site_package" do
    patch :update, id: @site_package, site_package: { package_id: @site_package.package_id, site_id: @site_package.site_id }
    assert_redirected_to site_package_path(assigns(:site_package))
  end

  test "should destroy site_package" do
    assert_difference('SitePackage.count', -1) do
      delete :destroy, id: @site_package
    end

    assert_redirected_to site_packages_path
  end
end
