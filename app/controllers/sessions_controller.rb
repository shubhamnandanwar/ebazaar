class SessionsController < ApplicationController

  def new
  end

  def create
    if consumer = Consumer.authenticate(params[:email], params[:password])
      session[:consumer_id] = consumer.id
      redirect_to root_path, :notice => "Logged in successfully"
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :action => 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path, :notice => "You successfully logged out"
  end
end
