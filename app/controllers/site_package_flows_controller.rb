class SitePackageFlowsController < ApplicationController
  before_action :set_site_package_flow, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @site_package_flows = SitePackageFlow.all
    respond_with(@site_package_flows)
  end

  def show
    respond_with(@site_package_flow)
  end

  def new
    @site_package_flow = SitePackageFlow.new
    respond_with(@site_package_flow)
  end

  def edit
  end

  def create
    @site_package_flow = SitePackageFlow.new(site_package_flow_params)
    @site_package_flow.save
    respond_with(@site_package_flow)
  end

  def update
    @site_package_flow.update(site_package_flow_params)
    respond_with(@site_package_flow)
  end

  def destroy
    @site_package_flow.destroy
    respond_with(@site_package_flow)
  end

  private
    def set_site_package_flow
      @site_package_flow = SitePackageFlow.find(params[:id])
    end

    def site_package_flow_params
      params.require(:site_package_flow).permit(:site_package_id, :flow_id, :content, :status)
    end
end
