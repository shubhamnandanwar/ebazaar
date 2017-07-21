class ProductsController < ApplicationController

  before_action :find_category

  def index
    @products = Product.all
  end

  def new
    
    @product = Product.new
  end

  def create
    @product = @category.products.create(product_params)
    if @product.valid?
      redirect_to category_path(@category)
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
      redirect_to category_path(@category)
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
    
    redirect_to category_path(@category)
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, :description)
    end

    def find_category
      @category = Category.find(params[:category_id])
    end
end
