class ProductsController < ApplicationController
  def index
    @response = JSON.parse(Bestseller.get_bestseller_list)
    @products = Product.all
    @order_item = current_order.order_items.new
  end
end
