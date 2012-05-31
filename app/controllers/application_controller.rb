class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def authorize
    redirect_to new_user_url, alert: "Not authorized" if current_user.nil?
  end
  
  def is_admin?
    redirect_to new_user_url, alert: "Not authorized as admin" if !current_user.admin
  end
  
end
