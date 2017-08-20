class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def update
    cart_item = current_cart.cart_items.find(params[:id])
    cart_item.update(cart_item_params)

    redirect_to carts_path
  end

  def destroy
    cart_item = current_cart.cart_items.find(params[:id])
    product = cart_item.product
    cart_item.destroy
    flash[:warning] = "已删除#{product.title}"
    redirect_to carts_path
  end

  private

    def cart_item_params
      params.require(:cart_item).permit(:quantity)
    end
end
