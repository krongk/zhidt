class FlowsController < ApplicationController
  before_action :set_flow, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @flows = Flow.all
    respond_with(@flows)
  end

  def show
    respond_with(@flow)
  end

  def new
    @flow = Flow.new
    respond_with(@flow)
  end

  def edit
  end

  def create
    @flow = Flow.new(flow_params)
    @flow.save
    respond_with(@flow)
  end

  def update
    @flow.update(flow_params)
    respond_with(@flow)
  end

  def destroy
    @flow.destroy
    respond_with(@flow)
  end

  private
    def set_flow
      @flow = Flow.find(params[:id])
    end

    def flow_params
      params.require(:flow).permit(:package_id, :title, :description, :tutorial, :icon)
    end
end
