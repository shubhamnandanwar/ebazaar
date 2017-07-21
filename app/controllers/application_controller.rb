class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  private
  def current_user
    @current_user ||= Consumer.find(session[:consumer_id]) if session[:consumer_id]
  end
end