class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :basketlink

  private
  def basketlink
    if !current_user.nil?
      user_id = current_user.id
      order_id = Order.where(user_id: user_id).where(status: "ongoing").first.id
      @basketsum = Basket.where(order_id: order_id).count
      @basket_url = "/orders/#{order_id}/baskets"
    else
      @basket_url = "#"
    end
  end
end
