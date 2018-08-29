class BasketsController < ApplicationController
  def index
    @basketItems = Basket.where(order_id: params[:order_id])
    @products = []
    @basketItems.each do |item|
      @product = Product.find(item.product_id)
      @products.push(@product)

    end
  end
end
