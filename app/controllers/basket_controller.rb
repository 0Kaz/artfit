class BasketController < ApplicationController
  def all
    @basket = Basket.find(params[:order_id])
    @basketproducts = @basket.products
  end
end
