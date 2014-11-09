class NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @notices = Notice.all
    respond_with(@notices)
  end

  def show
    respond_with(@notice)
  end

  def new
    @notice = Notice.new
    respond_with(@notice)
  end

  def edit
  end

  def create
    @notice = Notice.new(notice_params)
    @notice.save
    respond_with(@notice)
  end

  def update
    @notice.update(notice_params)
    respond_with(@notice)
  end

  def destroy
    @notice.destroy
    respond_with(@notice)
  end

  private
    def set_notice
      @notice = Notice.find(params[:id])
    end

    def notice_params
      params.require(:notice).permit(:user_id, :level, :message, :is_read)
    end
end
