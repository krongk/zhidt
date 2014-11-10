#encoding: utf-8
module ApplicationHelper
  NOTICE_LEVEL = ['info', 'success', 'warning', 'danger']
  COLORS = ['warning', 'danger', 'primary', 'info', 'success', 'purple']
  FLOW_STATUS =[['正在进行', 'open'], ['已完成', 'close']]

  def rand_color
    COLORS[rand(COLORS.size)]
  end

end
