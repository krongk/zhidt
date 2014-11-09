class SitePackagesController < ApplicationController
  before_action :set_site_package, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @site_packages = SitePackage.all
    respond_with(@site_packages)
  end

  def show
    respond_with(@site_package)
  end

  def new
    @site_package = SitePackage.new
    respond_with(@site_package)
  end

  def edit
  end

  def create
    @site_package = SitePackage.new(site_package_params)
    @site_package.save
    respond_with(@site_package)
  end

  def update
    @site_package.update(site_package_params)
    respond_with(@site_package)
  end

  def destroy
    @site_package.destroy
    respond_with(@site_package)
  end

  private
    def set_site_package
      @site_package = SitePackage.find(params[:id])
    end

    def site_package_params
      params.require(:site_package).permit(:site_id, :package_id)
    end
end
