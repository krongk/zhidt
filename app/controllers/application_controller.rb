class ApplicationController < ActionController::Base
  include ApplicationHelper
  helper :all
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #Override the devise default redirect path
  def after_sign_in_path_for(resource)
    if resource.sites.any?
      sites_path
    else
      new_site_path
    end
  end

  #render 404 error
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  private
    def mobile_device?
      request.user_agent =~ /Mobile|webOS/
    end
    helper_method :mobile_device?

    def current_site
      if current_user
        return Site.find_by(id: current_user.current_site_id)
      end
      return nil
    end
    helper_method :current_site

end
