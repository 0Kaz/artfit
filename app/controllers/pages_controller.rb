class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @designs = Design.all
  end

  def checkout
    user_id = current_user.id
    @order = Order.where(user_id: user_id).last
    basketItems = Basket.where(order_id: @order.id)
    compute_price(basketItems)
  end
end
