class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  private
  def current_user
    current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def require_login
    unless session[:user_id]
     flash[:error] = "You must be logged in to access!"
       redirect_to root_path # halts request cycle
     end
   end
end
