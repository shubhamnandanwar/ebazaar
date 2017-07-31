class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  private
  def current_user 
    if session[:consumer_id]
    	@current_user ||= Consumer.find(session[:consumer_id])
    elsif cookies.signed[:consumer_id]
    	@current_user = Consumer.find(cookies.signed[:consumer_id])
    	session[:consumer_id] = @current_user.id
    end
  end
end