class SessionsController < ApplicationController

  def new
  end

  def create
    consumer = Consumer.user params[:email] 
    if consumer && consumer.authenticate(params[:password])
      session[:consumer_id] = consumer.id

      if params[:remember_me]
        cookies.signed[:consumer_id] = { value: consumer.id, expires: 2.weeks.from_now }
      else
        #expires at the end of the browser session
        cookies.signed[:consumer_id] = consumer.id
      end
      redirect_to root_path, :notice => "Logged in successfully"
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :action => 'new'
    end
  end

  def destroy
    cookies.delete :consumer_id
    session[:consumer_id] = nil
    session[:cart_id] = nil
    redirect_to root_path, :notice => "You successfully logged out"
  end
end
