class SitePackageFlowCommentsController < ApplicationController
  before_action :set_site_package_flow_comment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @site_package_flow_comments = SitePackageFlowComment.all
    respond_with(@site_package_flow_comments)
  end

  def show
    respond_with(@site_package_flow_comment)
  end

  def new
    @site_package_flow_comment = SitePackageFlowComment.new
    respond_with(@site_package_flow_comment)
  end

  def edit
  end

  def create
    @site_package_flow_comment = SitePackageFlowComment.new(site_package_flow_comment_params)
    @site_package_flow_comment.save
    respond_with(@site_package_flow_comment)
  end

  def update
    @site_package_flow_comment.update(site_package_flow_comment_params)
    respond_with(@site_package_flow_comment)
  end

  def destroy
    @site_package_flow_comment.destroy
    respond_with(@site_package_flow_comment)
  end

  private
    def set_site_package_flow_comment
      @site_package_flow_comment = SitePackageFlowComment.find(params[:id])
    end

    def site_package_flow_comment_params
      params.require(:site_package_flow_comment).permit(:site_package_flow_id, :content)
    end
end
