class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @resources = Resource.all
    respond_with(@resources)
  end

  def show
    respond_with(@resource)
  end

  def new
    @resource = Resource.new
    respond_with(@resource)
  end

  def edit
  end

  def create
    @resource = Resource.new(resource_params)
    flash[:notice] = '上传成功.' if @resource.save
    respond_with(@resource)
  end

  def update
    flash[:notice] = '更新成功.' if @resource.update(resource_params)
    respond_with(@resource)
  end

  def destroy
    @resource.destroy
    respond_with(@resource)
  end

  private
    def set_resource
      @resource = Resource.find(params[:id])
    end

    def resource_params
      params.require(:resource).permit(:resource_type, :source_class, :source_id, :asset)
    end
end
