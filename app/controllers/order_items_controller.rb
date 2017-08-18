class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    total =  @order.order_items.to_a.inject(0){|sum,x| sum + x.product.price*x.quantity }
    @order.update(total_price:total)
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    total =  @order.order_items.to_a.inject(0){|sum,x| sum + x.product.price*x.quantity }
    @order.update(total_price:total)
    redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
