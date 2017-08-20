class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    cart_item = current_cart.cart_items.find(params[:id])
    product = cart_item.product
    cart_item.destroy
    flash[:warning] = "已删除#{product.title}"
    redirect_to carts_path
  end
end
