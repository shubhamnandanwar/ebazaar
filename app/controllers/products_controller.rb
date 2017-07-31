class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to category_path(@product.category_id)
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to category_path(@product.category_id)
    else
      render 'edit'
    end
  end

  def show
     @product = Product.find(params[:id])
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    
    redirect_to category_path(product.category_id)
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, :description, :category_id)
    end

end
