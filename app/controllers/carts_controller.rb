class CartsController < ApplicationController

  def add_to_cart
    @cart_item = CartItem.new(product_id: params[:product_id], quantity: '1', price: params[:price], cart_id: current_user.cart.id)
    @cart_item.save
    respond_to do |format|
      format.html { redirect_to category_path(cart_item.product.category) }
      format.js
    end
  end

  def remove_item
    @cart_item = current_user.cart.cart_items.by_product_id(params[:product_id]).first
    @cart_item.destroy

    respond_to do |format|
      format.html { redirect_to viewcart_path, notice: 'Cart item was successfully removed.' }
      format.js { render :layout => false }
    end
  end

  def view_cart
    @cart_items = current_user.cart.cart_items
    respond_to do |format|
      format.html { render 'show' }
      format.js { render :layout => false }
    end
    
  end
end