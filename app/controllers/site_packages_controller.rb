class SitePackagesController < ApplicationController
  before_action :set_site_package, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @site_packages = SitePackage.all
    respond_with(@site_packages)
  end

  def show
    @package = @site_package.package
    respond_with(@site_package)
  end

  def new
    @site_package = SitePackage.new
    @site = Site.find_by(id: params[:site_id])
    @package = Package.find_by(id: params[:package_id])
    respond_with(@site_package)
  end

  def edit
    @site = @site_package.site
    @package = @site_package.package
  end

  def create
    @site_package = SitePackage.find_by(site_id: site_package_params[:site_id], package_id: site_package_params[:package_id] )
    if @site_package.nil?
      @site_package = SitePackage.create(site_package_params)
      @site_package.reload
      Package.find_by(site_package_params[:package_id]).flows.each do |flow|
        SitePackageFlow.create(site_package_id: @site_package.id, flow_id: flow.id, content: flow.temp_content)
      end
    end
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
