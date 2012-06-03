class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user 
  helper_method :is_admin?
  
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  

  
  def authorize
    redirect_to new_user_url, alert: "Not authorized" if current_user.nil?
  end
  
  def is_admin?
    current_user.admin
  end
  
end
