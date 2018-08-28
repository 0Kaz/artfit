class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :basketlink

  private
  def basketlink
    user_id = current_user.id
    order_id = Order.where(user_id: user_id).where(status: "ongoing").first.id
    @basket_url = "/orders/#{order_id}/baskets"
  end
end
