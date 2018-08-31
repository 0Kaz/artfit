class BasketsController < ApplicationController

  def index
    @order = Order.find(params[:order_id])
    @basketItems = Basket.where(order_id: params[:order_id])
    compute_price(@basketItems)
    @products = []
    @basketItems.each do |item|
      @product = Product.find(item.product_id)
      @products.push(@product)
    end
  end
end
