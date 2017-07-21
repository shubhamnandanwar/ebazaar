class ConsumersController < ApplicationController

  def new
    @consumer = Consumer.new
  end

  def index
    @consumers = Consumer.all
  end

  def create
    @consumer = Consumer.new(consumer_params)
    if @consumer.save
      cart = Cart.new
      cart.consumer_id = @consumer.id
      cart.save
      redirect_to consumers_path
    else
      render 'new'
    end
  end

  def edit
    @consumer = Consumer.find(params[:id])
  end

  def update
    @consumer = Consumer.find(params[:id])
    
    if @consumer.update(consumer_params)
      redirect_to consumers_path
    else
      render 'edit'
    end
  end

  def show
    @consumer = Consumer.find(params[:id])
  end

  def destroy
    consumer = Consumer.find(params[:id])
    consumer.destroy
    redirect_to consumers_path
  end

  private
    def consumer_params
      params.require(:consumer).permit(:first_name, :last_name, :phone, :email, :address,
        :city, :state, :country, :zip_code, :password)
    end
  
end
