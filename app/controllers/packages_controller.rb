class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @packages = Package.all
    respond_with(@packages)
  end

  def show
    respond_with(@package)
  end

  def new
    @package = Package.new
    respond_with(@package)
  end

  def edit
  end

  def create
    @package = Package.new(package_params)
    flash[:notice] = 'Package was successfully created.' if @package.save
    respond_with(@package)
  end

  def update
    flash[:notice] = 'Package was successfully updated.' if @package.update(package_params)
    respond_with(@package)
  end

  def destroy
    @package.destroy
    respond_with(@package)
  end

  private
    def set_package
      @package = Package.find(params[:id])
    end

    def package_params
      params.require(:package).permit(:title, :description, :icon)
    end
end
