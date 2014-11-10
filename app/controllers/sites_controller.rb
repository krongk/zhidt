class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sites = current_user.sites.page(params[:page])
    respond_with(@sites)
  end

  def show
    user = User.find(current_user.id)
    user.current_site_id = @site.id
    user.save!
    
    respond_with(@site)
  end

  def new
    @site = Site.new
    respond_with(@site)
  end

  def edit
  end

  def create
    @site = Site.new(site_params)
    @site.user_id = current_user.id
    @site.save

    user = User.find(current_user.id)
    user.current_site_id = @site.id
    user.save!
    
    respond_with(@site)
  end

  def update
    @site.update(site_params)
    respond_with(@site)
  end

  def destroy
    @site.destroy
    respond_with(@site)
  end

  private
    def set_site
      @site = Site.find(params[:id])
    end

    def site_params
      params.require(:site).permit(:user_id, :title)
    end
end
